import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

Window {
    visible: true
    width: 900
    height: 640
    title: qsTr("小木")
    flags: Qt.FramelessWindowHint//隐藏原生的放大缩小按钮
    color:"transparent"


    Image {
        id: background_image
        anchors.fill: parent
        source: "qrc:/images/head_bg_3.jpg"
        fillMode: Image.PreserveAspectCrop
        visible: false
    }
    Rectangle {
        id: mask
        color: "transparent"
        anchors.fill: parent
        Rectangle {
           anchors.fill: parent
           radius: 10
           color: "black"
        }
        visible: false
    }
    OpacityMask{
        anchors.fill: parent
        source: background_image
        maskSource: mask
    }
    Rectangle{
        anchors.fill: parent
        z:1
        color: "transparent"
        TitleBar{
            width: parent.width
            height: 20
        }
    }




}

