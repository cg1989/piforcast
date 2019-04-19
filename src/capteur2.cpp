#include "capteur2.h"
#include "sensors.h"
#include "bme280.h"
#include <iostream>
#include <cmath>
#include <vector>

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
        qreal tmp = vec.front() - vec.back();
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
                if(pres_heure.size() > 59){
            pres_heure.erase(pres_heure.begin());
            //cout << "supr 1: ";
        }
        cout << pres_heure.back() <<" "<< pres_heure.size()<< " "<< m_tend <<endl;
    }
    count++;
    
    
}
//

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



