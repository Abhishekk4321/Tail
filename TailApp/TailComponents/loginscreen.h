#ifndef LOGINSCREEN_H
#define LOGINSCREEN_H

#include <QObject>

class LoginScreen : public QObject
{
    Q_OBJECT

public:
    explicit LoginScreen(QObject *parent = nullptr);
    Q_INVOKABLE bool validUser();



signals:

};

#endif // LOGINSCREEN_H
