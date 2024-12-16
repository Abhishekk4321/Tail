import QtQuick 2.0
import QtQuick.Controls 2.0

Item {

    Rectangle
    {
        id:homeScreenRect
        height: 1024
        width: 900

        Rectangle
        {
            id:usernameRect
            height: 30
            width: 200
            TextField
            {
                id: usernameTextField
                placeholderText: "Username"
                leftPadding: 30
                topPadding: 10
                wrapMode: Text.NoWrap
                background: Rectangle{
                    id:usernameTextFieldRect
                    border.color: "black"
                    height: 40
                    width: 200
                    Image {
                        id: userIcon
                        source: "qrc:/UI/Images/user.svg"
                        height: 25
                        width: 25
                        anchors
                        {
                            top: usernameTextFieldRect.top
                            topMargin: 8
                        }
                    }
                }
            }

            anchors
            {
                top: homeScreenRect.top
                topMargin : 200
                left : homeScreenRect.left
                leftMargin :100

            }
        }

        Rectangle
        {
            id:passwordRect
            height: 30
            width: 200
            TextField
            {
                id: passwordTextField
                placeholderText: "Password"
                leftPadding: 30
                topPadding: 10
                wrapMode: Text.NoWrap
                background: Rectangle{
                    id:passwordTextFieldRect
                    border.color: "black"
                    height: 40
                    width: 200
                    Image {
                        id: passwordIcon
                        source: "qrc:/UI/Images/password.svg"
                        height: 25
                        width: 25
                        anchors
                        {
                            top: passwordTextFieldRect.top
                            topMargin: 8
                        }
                    }
                }
            }

            anchors
            {
                top: homeScreenRect.top
                topMargin : 260
                left : homeScreenRect.left
                leftMargin :100

            }
        }

        Button
        {
            id:loginButton
            text: "Login"
            height: 40
            width: 90
            anchors
            {
                top: homeScreenRect.top
                topMargin : 320
                left : homeScreenRect.left
                leftMargin :100

            }
            onClicked:
            {
                if(login.validUser())
                {
                    console.log("hello");
                }
            }
        }

        Button
        {
            id:singUpButton
            text: "Sign Up"
            height: 40
            width: 90
            anchors
            {
                top: homeScreenRect.top
                topMargin : 320
                left : homeScreenRect.left
                leftMargin : 210

            }
        }

    }

}
