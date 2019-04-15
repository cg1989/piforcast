#ifndef SENSORS_H
#define SENSORS_H
#include <sys/types.h>
#include <fcntl.h>
//#include <iostream>
//#include <string>
//#include <vector>

void user_delay_ms(uint32_t period);

int8_t user_i2c_write(uint8_t id, uint8_t reg_addr, uint8_t *data, uint16_t len);

int8_t user_i2c_read(uint8_t id, uint8_t reg_addr, uint8_t *data, uint16_t len);

struct bme280_dev initSensor();

struct bme280_data stream_sensor_data_normal_mode(struct bme280_dev *dev);

#endif // CAPTEUR_BME_H 
