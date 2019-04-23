#include "capteur2.h"
#include "sensors.h"
#include "bme280.h"
#include <iostream>
#include <cmath>
#include <vector>
#include <utility>
#include <QString>
#include <QDebug>
#include <QPainter>

using namespace std; 

Capteur::Capteur() {
    
}

void Capteur::initialisation(){
    m_dev = init();
}

qreal convert_pres(qreal pres, qreal alt,qreal temp){
    qreal kelvin = temp + 273.15;
    return pres+1013.25*(1-pow((kelvin-0.0065*alt)/kelvin,5.255));

}
// A mettre en méthode
int Capteur::tendance(vector<qreal>  vec){
    int tend = 0;
    if (vec.size() != 0){
        qreal tmp = vec.back() - vec.front();
        if(tmp > 0.3){
            tend = 1;
        }else if(tmp < -0.3){
            tend = -1;
        }else{
            tend = 0;
        }
        //cout << tend << endl;
        return tend;
    }
}

//refresh
void Capteur::refresh() {
    
    struct bme280_data data;
    data = stream_sensor_data_normal_mode(&m_dev);
    m_temp = data.temperature;
    m_humi = data.humidity;
    m_pres = convert_pres(data.pressure/100,151, m_temp);
    
    if (count < 60){
        sum_pres = sum_pres + m_pres;
    }else{
        m_pres_min = sum_pres/60;
        count=0;
        sum_pres=m_pres;
        pres_heure.push_back(m_pres_min);
        m_tend = Capteur::tendance( pres_heure);
                if(pres_heure.size() > 60){
            pres_heure.erase(pres_heure.begin());
        }
        cout << pres_heure.back() <<" "<< pres_heure.size()<< " "<< m_tend <<endl;
    }
    count++;
    
    int zambretti = calc_zam(m_tend,m_pres);
    m_image = image_zam(zambretti-1);
    m_des = descrip_zam(zambretti-1);
    //qDebug() << m_image <<" "<< m_des <<" "<< zambretti;
    
    
}


//algo zambetti

int Capteur::calc_zam(int tend, qreal m_pres) {
    
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
}


QString Capteur::descrip_zam(int Z) {
    //Z++;
	std::vector<QString> res = {
		"Beau temps, calme",                    "Beau fixe",
        "S'améliorant vers beau temps",         "Beau, se dégradant légérement",
        "Beau, averses possible",               "Assez beau, s'améliorant",
        "Assez beau, averses prochaines",       "Assez beau, se dégradant en averses",
        "Averses, s'améliorant",                "Changeant, nuageux",
        "Averses probable",                     "Nuageux pouvant s'améliorer",
        "Nuageux s'améliorant",                 "Averses, brèves éclaircies"
        "Averses, se dégradant",                "Changeant, pluie possible",
        "Incertain, brèves éclaircies",         "Nuageux, pluie à venir",
        "Nuageux, petite pluie",                "Très nuageux, incertain",
        "Pluies occasionnelles se détériorant", "Pluies, très nuageux",
        "Pluies",                               "Pluies, très nuageux",
        "Tempêtueux, pouvant s'améliorer",      "Tempétueux, beaucoup de pluie"};
	return res[Z];
}

QString Capteur::image_zam(int Z) {
	std::vector<QString> res = {
		"soleil","soleil","peunuageux","peunuageux","averses","peunuageux","averses","averses","aversesfortes","eclaircies",
		"aversesfortes","eclaircies","eclaircies","aversesfortes","aversesfortes","changeant","eclaircies","averses","petitepluie","nuageux",
		"petitepluie","pluie","pluie","pluie","orage","orage"};
	return res[Z];
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

//méthode pour tendence
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
