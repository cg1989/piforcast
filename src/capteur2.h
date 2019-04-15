#ifndef CAPTEUR2_H
#define CAPTEUR2_H

#include <QObject>
#include "libcapteur/bme280.h"

class Capteur : public QObject
{
    Q_OBJECT
    Q_PROPERTY(qint32 temp READ temp  NOTIFY tempChanged)
    Q_PROPERTY(qint32 pres READ pres  NOTIFY presChanged)
    Q_PROPERTY(qint32 humi READ humi  NOTIFY humiChanged)

private:
    qint32 m_temp =0;
    qint32 m_pres =0;
    qint32 m_humi =0;
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
    qint32 temp() const;
    qint32 pres() const;
    qint32 humi() const;




};

#endif // CAPTEUR2_H 
