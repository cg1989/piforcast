

#include "sensors.h"
#include "bme280.h"


#include <stdio.h>
#include <unistd.h>
#include <stdint.h>
//#include <wiringPi.h>

//Default write it to the register in one time
#define USESPISINGLEREADWRITE 0 

#include <string.h>
#include <stdlib.h>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <fcntl.h>

//Raspberry 3B+ platform's default I2C device file
#define IIC_Dev  "/dev/i2c-1"
	
int fd;

void user_delay_ms(uint32_t period)
{
  usleep(period*1000);
}

int8_t user_i2c_read(uint8_t id, uint8_t reg_addr, uint8_t *data, uint16_t len)
{
  write(fd, &reg_addr,1);
  read(fd, data, len);
  return 0;
}

int8_t user_i2c_write(uint8_t id, uint8_t reg_addr, uint8_t *data, uint16_t len)
{
  int8_t *buf;
  buf = (int8_t *)malloc(len +1);
  buf[0] = reg_addr;
  memcpy(buf +1, data, len);
  write(fd, buf, len +1);
  free(buf);
  return 0;
}

struct bme280_dev init()
{
  struct bme280_dev dev;
  int8_t rslt = BME280_OK;
  uint8_t settings_sel;
  //struct bme280_data comp_data;
  if ((fd = open(IIC_Dev, O_RDWR)) < 0) {
    exit(1);
  }
  if (ioctl(fd, I2C_SLAVE, 0x77) < 0) {
    printf("Failed to acquire bus access and/or talk to slave.\n");
    exit(1);
  }
  //dev.dev_id = BME280_I2C_ADDR_PRIM;//0x76
  dev.dev_id = BME280_I2C_ADDR_SEC; //0x77
  dev.intf = BME280_I2C_INTF;
  dev.read = user_i2c_read;
  dev.write = user_i2c_write;
  dev.delay_ms = user_delay_ms;

  rslt = bme280_init(&dev);
  printf("\r\n BME280 Init Result is:%d \r\n",rslt);
  //comp_data=stream_sensor_data_normal_mode(&dev);
  dev.settings.osr_h = BME280_OVERSAMPLING_1X;
  dev.settings.osr_p = BME280_OVERSAMPLING_16X;
  dev.settings.osr_t = BME280_OVERSAMPLING_2X;
  dev.settings.filter = BME280_FILTER_COEFF_16;
  dev.settings.standby_time = BME280_STANDBY_TIME_62_5_MS;

  settings_sel = BME280_OSR_PRESS_SEL;
  settings_sel |= BME280_OSR_TEMP_SEL;
  settings_sel |= BME280_OSR_HUM_SEL;
  settings_sel |= BME280_STANDBY_SEL;
  settings_sel |= BME280_FILTER_SEL;
  rslt = bme280_set_sensor_settings(settings_sel, &dev);
  rslt = bme280_set_sensor_mode(BME280_NORMAL_MODE, &dev);
  dev.delay_ms(70);
  return dev;
}

struct bme280_data getData(struct bme280_dev *dev)
{
    int8_t rslt;
    struct bme280_data comp_data;
    rslt = bme280_get_sensor_data(BME280_ALL, &comp_data, dev);
    
    return comp_data;
	
}

/*
void main(){
  struct bme280_dev test;
  struct bme280_data data;
  test = init();
  data = stream_sensor_data_normal_mode( &test);
  printf("%f", data.temperature);
  

}
*/
