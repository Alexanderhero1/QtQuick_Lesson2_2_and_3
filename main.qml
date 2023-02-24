import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window
{
    width: 640
    height: 480
    visible: true
    title: qsTr("КВАДРАТ МЕНЯЕТ ЦВЕТ И ФОРМУ - ЧУДЕСА!")

    Rectangle
    {
        id: rect
        width: 50
        height: 50

        color: "blue"
        border.color: "black"
        anchors.centerIn: parent


        MouseArea
        {
         id: mouseArea1
         anchors.fill: parent
         acceptedButtons: Qt.LeftButton | Qt.RightButton;
        onClicked:
        {
            if(mouse.button == Qt.LeftButton)

         {
          parent.color = Qt.rgba(Math.random(),Math.random(),Math.random())
         }
        else if(mouse.button == Qt.RightButton)
         {
               rotation360.start()
         }
         }
        onDoubleClicked: parent.radius = 25
        }
        RotationAnimation
        {   id: rotation360; target: rect; to: rect.rotation+360; duration: 3000
        }
}
}
