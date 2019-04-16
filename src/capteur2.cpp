#include "capteur2.h"
#include "sensors.h"
#include "bme280.h"
#include <iostream>
//#include <QDebug>

using namespace std; 

Capteur::Capteur() {
    
}

void Capteur::initialisation(){
    m_dev = init();
}

void Capteur::refresh() {
	//qDebug() << "Called the C++ slot";
    struct bme280_data data;
    data = stream_sensor_data_normal_mode(&m_dev);
    m_temp = data.temperature;
    m_humi = data.humidity;
    m_pres = data.pressure;

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


