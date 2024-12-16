#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QQmlContext>
#include "../TailComponents/loginscreen.h"

int main(int argc, char *argv[])
{

    QGuiApplication app(argc,argv);
    QQmlApplicationEngine engine;

    LoginScreen login;
    qmlRegisterSingletonType(QUrl("qrc:/UI/Defines/HeightScheme.qml"),"HeightScheme",1,0,"HeightScheme");
   engine.rootContext()->setContextProperty("login",&login);
    engine.load(QUrl("qrc:/UI/main.qml"));




    return app.exec();
}

