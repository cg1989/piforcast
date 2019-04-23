#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "capteur2.h"
#include "sensors.h"
#include "bme280.h"

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
