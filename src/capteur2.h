#ifndef CAPTEUR2_H
#define CAPTEUR2_H

#include <QObject>
#include "bme280.h"
#include "sensors.h"

class Capteur : public QObject
{
    Q_OBJECT
    Q_PROPERTY(qreal temp READ temp  NOTIFY tempChanged)
    Q_PROPERTY(qreal pres READ pres  NOTIFY presChanged)
    Q_PROPERTY(qreal humi READ humi  NOTIFY humiChanged)

private:
    qreal m_temp;
    qreal m_pres;
    qreal m_humi;
    struct bme280_dev m_dev;
    
signals:
    void tempChanged();
    void presChanged();
    void humiChanged();

public slots:
    void refresh();

public:
    Capteur();
    void initialisation();
    qreal temp() const;
    qreal pres() const;
    qreal humi() const;




};

#endif // CAPTEUR2_H 
