import QtQuick 2.0
import QtQuick.Window 2.15
import HeightScheme 1.0
Item {

    Rectangle
    {
        id:mainRect
        height: HeightScheme.height
        width: HeightScheme.width
        Rectangle
        {
            id: splashScreen
            height: HeightScheme.height / 2
            width: HeightScheme.width /  4
            radius: 80
            rotation: 50
            anchors
            {
                top:mainRect.top
                topMargin:80
                left: mainRect.left
                leftMargin : 55
            }

            property color backgroundColor: "white"
            color: backgroundColor
            anchors
            {

            }

            SequentialAnimation
            {
                id: sequentialAnimation
                loops: Animation.Infinite
                running: true


                // Define multiple color transitions
                ColorAnimation { target: splashScreen; property: "backgroundColor"; to: "#7AFDD6"; duration: 500 }
                ColorAnimation { target: splashScreen; property: "backgroundColor"; to: "#77FF94"; duration: 500 }
                ColorAnimation { target: splashScreen; property: "backgroundColor"; to: "#caf0f8"; duration: 500 }
                ColorAnimation { target: splashScreen; property: "backgroundColor"; to: "#FBFAF8"; duration: 500 }
                ColorAnimation { target: splashScreen; property: "backgroundColor"; to: "#DFF8EB"; duration: 500 }

            }
        }


        Rectangle
        {
            id: splashScreen1
            height: HeightScheme.height / 2
            width: HeightScheme.width /  4
            radius: 80
            rotation: 130
            anchors
            {
                top:mainRect.top
                topMargin:80
                left: splashScreen.right
                leftMargin : 78
            }

            property color backgroundColor: "white"
            color: backgroundColor
            anchors
            {

            }

            SequentialAnimation
            {
                id: sequentialAnimation1
                loops: Animation.Infinite
                running: true


                // Define multiple color transitions
                ColorAnimation { target: splashScreen1; property: "backgroundColor"; to: "#7AFDD6"; duration: 500 }
                ColorAnimation { target: splashScreen1; property: "backgroundColor"; to: "#77FF94"; duration: 500 }
                ColorAnimation { target: splashScreen1; property: "backgroundColor"; to: "#caf0f8"; duration: 500 }
                ColorAnimation { target: splashScreen1; property: "backgroundColor"; to: "#FBFAF8"; duration: 500 }
                ColorAnimation { target: splashScreen1; property: "backgroundColor"; to: "#DFF8EB"; duration: 500 }

            }
        }

        Rectangle
        {
            id: splashScreen2
            height: HeightScheme.height / 3
            width: HeightScheme.width /  5
            radius: 80
            rotation: 90

            anchors
            {
                top:splashScreen.top
                topMargin:100
                left: mainRect.left
                leftMargin : 150

            }

            property color backgroundColor: "white"
            color: backgroundColor
            SequentialAnimation
            {
                id: sequentialAnimation2
                loops: Animation.Infinite
                running: true


                // Define multiple color transitions
                ColorAnimation { target: splashScreen2; property: "backgroundColor"; to: "#7AFDD6"; duration: 500 }
                ColorAnimation { target: splashScreen2; property: "backgroundColor"; to: "#77FF94"; duration: 500 }
                ColorAnimation { target: splashScreen2; property: "backgroundColor"; to: "#caf0f8"; duration: 500 }
                ColorAnimation { target: splashScreen2; property: "backgroundColor"; to: "#FBFAF8"; duration: 500 }
                ColorAnimation { target: splashScreen2; property: "backgroundColor"; to: "#DFF8EB"; duration: 500 }

            }
        }


    }
}
