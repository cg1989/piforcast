#include "capteur2.h"
#include "sensors.h"
#include "bme280.h"
#include <iostream>
#include <cmath>


using namespace std; 

Capteur::Capteur() {
    
}

void Capteur::initialisation(){
    m_dev = init();
}
float convert (float pres,float temp){
    float kelvin = temp + 273.15;
    return 1013.25*pow(1-((0.0065 * 151)/kelvin),5.255);
}
void Capteur::refresh() {

    struct bme280_data data;
    data = stream_sensor_data_normal_mode(&m_dev);
    m_temp = data.temperature;
    m_humi = data.humidity;
    m_pres = convert(data.pressure/100, m_temp);

}


//méthode pour température
qreal Capteur::temp() const
{
    return m_temp;
}


//méthode pour pression
qreal Capteur::pres() const
{
    return m_pres;
}


//méthode pour humidité
qreal Capteur::humi() const
{
    return m_humi;
}


