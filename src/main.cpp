#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "capteur2.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Capteur temp;
    Capteur pres;
    Capteur humi;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("capteur", &temp);
    engine.rootContext()->setContextProperty("capteur", &pres);
    engine.rootContext()->setContextProperty("capteur", &humi);
    
    //qmlRegisterType<Capteur>("CapteurClass", 1, 0, "Capteur");
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
    
//     Générateur aléatoire
//     std::default_random_engine re(std::chrono::system_clock::now().time_since_epoch().count());
//     std::uniform_int_distribution<int> distrib{0,30};
//     m_temp = distrib(re);
  
    return app.exec();
}
