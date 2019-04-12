#include "capteur.h"

Capteur::Capteur(QObject *parent) :
    QObject(parent)
{
    
}
//méthode pour température
qint32 Capteur::temp()
{
    return m_temp;
}

void Capteur::setTemp(const qint32 &temp)
{
    if (temp == m_temp)
        return;

    m_temp = temp;
    emit tempChanged();
}

//méthode pour pression
qint32 Capteur::pres()
{
    return m_pres;
}

void Capteur::setPres(const qint32 &pres)
{
    if (pres == m_pres)
        return;

    m_pres = pres;
    emit presChanged();
} 

//méthode pour humidité
qint32 Capteur::humi()
{
    return m_humi;
}

void Capteur::setHumi(const qint32 &humi)
{
    if (humi == m_humi)
        return;

    m_humi = humi;
    emit humiChanged();
} 

