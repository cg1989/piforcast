#ifndef CAPTEUR2_H
#define CAPTEUR2_H

#include <QObject>

class Capteur : public QObject
{
    Q_OBJECT
    Q_PROPERTY(qint32 temp READ temp  NOTIFY tempChanged)
    Q_PROPERTY(qint32 pres READ pres  NOTIFY presChanged)
    Q_PROPERTY(qint32 humi READ humi  NOTIFY humiChanged)

private:
    qint32 m_temp =17;
    qint32 m_pres =1000;
    qint32 m_humi =50;
    
signals:
    void tempChanged();
    void presChanged();
    void humiChanged();

public slots:
    void refresh();

public:
    Capteur();
    qint32 temp() const;
    qint32 pres() const;
    qint32 humi() const;




};

#endif // CAPTEUR2_H 
