#include "capteur.h"
#include "sensors.h"
#include "bme280.h"
#include "src_capteur.h"
#include "src_prometheus.h"
#include <iostream>
#include <cmath>
#include <vector>
#include <utility>
#include <QString>
#include <QDebug>

/*!
 * \file capteur.cpp
 * \brief Class objet de base pour le projet Pi4Cast
 * \author Camille Geimer & Dominique Jau
 * \version 1.0
 */

/*! \class Capteur capteur.h capteur
 * \brief classe representant le capteur.
 *
 *  La classe gére toutes les données du capteur (température, pression et humidité) à travers le fichier sensors.c
 *  Elle gère aussi l'algorithme de Zambretti
 */
 
Capteur::Capteur() {
    
}

/*!
 *  \brief Initialisateur
 *
 *  Initialise le capteur BME280
 *
 */
    
void Capteur::initialisation(){
    m_source = make_shared<Src_capteur>();
    if (! m_source->initialisation()) {
	m_source = make_shared<Src_prometheus>();
    }
}


/*!
 *  \brief Calcul de tendance
 *
 *  Utilise le vecteur de stockage des pressions pour calculer une tendance sur 1h
 *
 * \param <vec> { le vecteur des pressions }
 
 * 
 * \return {\return {Renvoi une valeur de -1, 0 ou 1 en cas de tendance respectivement négative, nulle ou positive}}
 */

int Capteur::tendance(std::vector<qreal>  vec){
    qint8 tend = 0;
    if (vec.size() > 2){
        qreal tmp = vec.back() - vec.front();
        if(tmp > 0.3){
            tend = 1;
        }else if(tmp < -0.3){
            tend = -1;
        }else{
            tend = 0;
        }
        return tend;
    }
}

/*!
 *  \brief Méthode de rafraichissement transmise à l'interface 
 *
 *  Cette méthode permet de récupérer les variables du capteur et de les rendre disponible pour l'interface graphique
 *  Elle gère aussi la création du vecteur des pressions et son alimentation en données.
 *  Elle transmet aussi les résultats de l'algorithmede Zambretti
 *
 */

//refresh
void Capteur::refresh() {
    m_source->refresh();

    if (count < 60){
        sum_pres = sum_pres + pres();
    }else{
        m_pres_min = sum_pres/60;
        count=0;
        sum_pres=pres();
        pres_heure.push_back(m_pres_min);
        m_tend = tendance(pres_heure);
        if(pres_heure.size() > 60){
            pres_heure.erase(pres_heure.begin());
        }
        cout << pres_heure.back() <<" "<< pres_heure.size()<< " "<< m_tend <<endl;
    }
    

    qint8 zambretti = calc_zam(m_tend,pres());
    //if (zambretti>0 && zambretti<27 ) {
        m_image = image_zam(zambretti);
        m_des = descrip_zam(zambretti);
    //}
    
    count++;
    
}


/*!
 *  \brief Algorithme de Zambretti
 *
 * Implémentation de l'algorithme de Zambretti tel que décrit à cette source: http://drkfs.net/zambretti.htm
 * \return {Renvoi une valeur de 1 à 26 équivalent au lettre de Zambretti}
 */

qint8 Capteur::calc_zam(qint8 tend, qreal m_pres) {
    
    if(tend == -1){
        if (m_pres >= 1050){return 1;}
        if (m_pres >= 1040){return 2;} 
        if (m_pres >= 1024){return 4;}
        if (m_pres >= 1018){return 8;}
        if (m_pres >= 1010){return 15;}
        if (m_pres >= 1004){return 18;}         
        if (m_pres >= 998){return 21;}
        if (m_pres >= 991){return 22;}
        if (m_pres >= 985){return 24;}   
    } else if (tend == 0){
        if (m_pres >= 1033){return 1;}
        if (m_pres >= 1023){return 2;} 
        if (m_pres >= 1014){return 5;}
        if (m_pres >= 1008){return 11;}
        if (m_pres >= 1000){return 14;}
        if (m_pres >= 994){return 16;}         
        if (m_pres >= 989){return 19;}
        if (m_pres >= 981){return 23;}
        if (m_pres >= 974){return 24;}
        if (m_pres >= 960){return 26;} 
    }else if (tend == 1){
        if (m_pres >= 1030){return 1;}
        if (m_pres >= 1022){return 2;} 
        if (m_pres >= 1012){return 3;}
        if (m_pres >= 1007){return 6;}
        if (m_pres >= 1000){return 7;}
        if (m_pres >= 995){return 9;}         
        if (m_pres >= 990){return 10;}
        if (m_pres >= 984){return 12;}
        if (m_pres >= 978){return 13;}
        if (m_pres >= 970){return 26;}
        if (m_pres >= 965){return 20;} 
        if (m_pres >= 959){return 25;} 
        if (m_pres >= 947){return 26;} 
    }
    return 0;
}

/*!
 *  \brief Description des temps possible
 *
 * Traduction des états possible ( http://drkfs.net/zambretti.htm) et mise en vecteur.
 * \return {Renvoi une description}
 */

QString Capteur::descrip_zam(qint8 z) {
	std::vector<QString> res = {
        "Pas de données",
        "Beau temps, calme",                    "Beau fixe",
        "S'améliorant vers beau temps",         "Beau, se dégradant légérement",
        "Beau, averses possibles",               "Assez beau, s'améliorant",
        "Assez beau, averses prochaines",       "Assez beau, se dégradant",
        "Averses, s'améliorant",                "Changeant, nuageux",
        "Averses probable",                     "Nuageux pouvant s'améliorer",
        "Nuageux s'améliorant",                 "Averses, brèves éclaircies",
        "Averses, se dégradant",                "Changeant, pluie possible",
        "Incertain, brèves éclaircies",         "Nuageux, pluie à venir",
        "Nuageux, petite pluie",                "Très nuageux, incertain",
        "Pluies occasionnelles se détériorant", "Pluies, très nuageux",
        "Pluies",                               "Pluies, très nuageux",
        "Tempêtueux, pouvant s'améliorer",      "Tempétueux, beaucoup de pluie"
    };
	return res[z];
}

/*!
 *  \brief Noms des images pour les icônes météo
 *
 *  \return {Renvoi le noms d'une image}
 */

QString Capteur::image_zam(qint8 z) {
	std::vector<QString> res = {
        "defaut",
		"soleil","soleil","peunuageux","peunuageux","averses","peunuageux","averses","averses","aversesfortes","eclaircies",
		"aversesfortes","eclaircies","eclaircies","aversesfortes","aversesfortes","changeant","eclaircies","averses","petitepluie","nuageux",
		"petitepluie","pluie","pluie","pluie","orage","orage"};
	return res[z];
}

//getteurs
qreal Capteur::temp() const
{
    return m_source->getTemp();
}


qreal Capteur::pres() const
{
    return m_source->getPres();
}


qreal Capteur::humi() const
{
    return m_source->getHumi();
}


int Capteur::tend() const
{
    return m_tend;
}

QString Capteur::image() const
{
    return m_image;
}

QString Capteur::des() const
{
    return m_des;
}
