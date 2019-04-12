#include "capteur2.h"
#include <QDebug>

void Capteur::refresh() {
	qDebug() << "Called the C++ slot";
}

Capteur::Capteur() {
    
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


