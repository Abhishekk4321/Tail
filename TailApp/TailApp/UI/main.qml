import QtQuick 2.15
import QtQuick.Controls 2.15
import HeightScheme 1.0
import "Screen"
ApplicationWindow
{
   height: HeightScheme.height
   width: HeightScheme.width
   visible: true
  
   Loader
   {
       id: loader
  anchors.fill: parent
       source: "qrc:/UI/Screen/HomeScreen.qml"
   }

   Timer
   {
      id: timer
      interval: 5000
      repeat: false
      running: true

      onTriggered: loader.source = "qrc:/UI/Screen/HomeScreen.qml"
   }



}
