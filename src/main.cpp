#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "capteur.h"
#include "sensors.h"
#include "bme280.h"

/** \mainpage
 * 
 *
 * Ce logiciel est fourni sous une licence GNU GPL. Toutes redistributions du code doivent être fournies avec les possibles modifications lui ayant été appliquées.
 *
 * Les sources du projet Pi4cast sont disponible à l'adresse suivante: https://github.com/cg1989/piforcast.git
 *
 * 
 * File		main.cpp
 * Date		30 avr 2019
 * Version	1.0
 *
 */

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Capteur sensor;
    sensor.initialisation();
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("sensor", &sensor);
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
    
  
    return app.exec();
}
