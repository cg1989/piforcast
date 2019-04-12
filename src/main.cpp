#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "capteur.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    qmlRegisterType<Capteur>("CapteurClass", 1, 0, "Capteur");
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
    return app.exec();
}
