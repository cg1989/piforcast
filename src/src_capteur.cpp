
#include <QtGlobal>
#include <vector>
#include <utility>
#include <cmath>
#include "src_capteur.h"
#include "sensors.h"

/*!
 * \file src_capteur.cpp
 * \brief Réeciture des méthodes init() et refresh() pour le mode local
 * \author Camille Geimer & Dominique Jau
 * \version 1.0
 */

/*!
 *  \brief Standardisation de la pression atmosphérique
 *
 *  formule du nivellement barométrique: https://fr.wikipedia.org/wiki/Variation_de_la_pression_atmosphérique_avec_l%27altitude
 *
 * \param <pres> { la pression mesurée }
 * \param <alt> { altitude fixé dans le code à 151m (toulouse)}
 * \param <temp> { la température mesurée }
 * 
 * \return {valeur de pression ramené à l'altitude 0}
 */

qreal convert_pres(qreal pres, qreal alt,qreal temp){
    qreal kelvin = temp + 273.15;
    return pres+1013.25*(1-pow((kelvin-0.0065*alt)/kelvin,5.255));

}


bool Src_capteur::initialisation(){
    if (init(&m_dev) != 0){
	return false;
    }
    return true;
}

void Src_capteur::refresh() {
    
    struct bme280_data data;
    data = getData(&m_dev);
    m_temp = data.temperature;
    m_humi = data.humidity;
    m_pres = convert_pres(data.pressure/100,151, m_temp);
}
