#ifndef CAPTEUR2_H
#define CAPTEUR2_H

#include <QObject>
#include <vector>
#include "bme280.h"
#include "sensors.h"

using namespace std; 

class Capteur : public QObject
{
    Q_OBJECT
    Q_PROPERTY(qreal temp READ temp  NOTIFY tempChanged)
    Q_PROPERTY(qreal pres READ pres  NOTIFY presChanged)
    Q_PROPERTY(qreal humi READ humi  NOTIFY humiChanged)
    Q_PROPERTY(qreal tend READ tend  NOTIFY tendChanged)
    

private:
    int count = 0;
    qreal sum_pres = 0;
    vector<qreal> pres_heure;
    int m_tend = 0;
    
    qreal m_temp;
    qreal m_pres;
    qreal m_humi;
    qreal m_pres_min;
    struct bme280_dev m_dev;
    
    
signals:
    void tempChanged();
    void presChanged();
    void humiChanged();
    void tendChanged();

public slots:
    void refresh();

public:
    Capteur();
    void initialisation();
    int tendance(vector<qreal> vec);
    qreal temp() const;
    qreal pres() const;
    qreal humi() const;
    int tend() const;




};

#endif // CAPTEUR2_H 
