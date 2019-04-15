#include "capteur2.h"
#include "sensors.h"
#include "libcapteur/bme280.h"
#include <QDebug>

Capteur::Capteur() {
    
}

void Capteur::initialisation(){
    struct bme280_dev m_dev;
    m_dev = init();
}

void Capteur::refresh() {
	//qDebug() << "Called the C++ slot";
    struct bme280_data val=stream_sensor_data_normal_mode(&m_dev);
    m_temp=val.temperature;
        m_humi++;
        m_pres++;
}


//méthode pour température
qint32 Capteur::temp() const
{
    return m_temp;
}


//méthode pour pression
qint32 Capteur::pres() const
{
    return m_pres;
}


//méthode pour humidité
qint32 Capteur::humi() const
{
    return m_humi;
}


