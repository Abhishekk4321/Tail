#include <QQmlApplicationEngine>
#include <QGuiApplication>


int main(int argc, char *argv[])
{

    QGuiApplication app(argc,argv);
    QQmlApplicationEngine engine;

    qmlRegisterSingletonType(QUrl("qrc:/UI/Defines/HeightScheme.qml"),"HeightScheme",1,0,"HeightScheme");
    engine.load(QUrl("qrc:/UI/main.qml"));




    return app.exec();
}

