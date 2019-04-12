#ifndef CAPTEUR_H
#define CAPTEUR_H

#include <QObject>

class Capteur : public QObject
{
    Q_OBJECT
    Q_PROPERTY(qint32 temp READ temp WRITE setTemp NOTIFY tempChanged)
    Q_PROPERTY(qint32 pres READ pres WRITE setPres NOTIFY presChanged)
    Q_PROPERTY(qint32 humi READ humi WRITE setHumi NOTIFY humiChanged)



public:
    explicit Capteur(QObject *parent = nullptr);

    qint32 temp();
    void setTemp(const qint32 &temp);
    qint32 pres();
    void setPres(const qint32 &pres);
    qint32 humi();
    void setHumi(const qint32 &humi);

signals:
    void tempChanged();
    void presChanged();
    void humiChanged();

private:
    qint32 m_temp =17;
    qint32 m_pres =1000;
    qint32 m_humi =50;
};

#endif // CAPTEUR_H 
