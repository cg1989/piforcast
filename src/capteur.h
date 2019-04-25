#ifndef CAPTEUR2_H
#define CAPTEUR2_H

#include <QObject>
#include <vector>
#include <utility>
#include "bme280.h"
#include "sensors.h"
#include <QString>

using namespace std; 

class Capteur : public QObject
{
    Q_OBJECT
    Q_PROPERTY(qreal temp READ temp  NOTIFY tempChanged)
    Q_PROPERTY(qreal pres READ pres  NOTIFY presChanged)
    Q_PROPERTY(qreal humi READ humi  NOTIFY humiChanged)
    Q_PROPERTY(int tend READ tend  NOTIFY tendChanged)
    Q_PROPERTY(QString des READ des  NOTIFY desChanged)
    Q_PROPERTY(QString image READ image  NOTIFY imageChanged)
    

private:
    int count = 0;
    qreal sum_pres = 0;
    vector<qreal> pres_heure;
    int m_tend = 0;
    
    qreal m_temp;
    qreal m_pres;
    qreal m_humi;
    qreal m_pres_min;
    QString m_image;
    QString m_des;
    struct bme280_dev m_dev;
    
    
signals:
    void tempChanged();
    void presChanged();
    void humiChanged();
    void tendChanged();
    void desChanged();
    void imageChanged();

public slots:
    void refresh();

public:
    Capteur();
    void initialisation();
    int tendance(vector<qreal> vec);
    qint8 calc_zam(qint8 tend, qreal m_pres);
    QString descrip_zam(qint8 z);
    QString image_zam(qint8 z);
    qreal temp() const;
    qreal pres() const;
    qreal humi() const;
    int tend() const;
    QString image() const;
    QString des() const;




};

#endif // CAPTEUR2_H 
