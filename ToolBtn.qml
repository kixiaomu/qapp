import QtQuick 2.0
import QtQuick.Controls 2.2
Rectangle{
    id:root
    width: 64
    height: 80
    property string imageSource: ""
    property string text:""
    property color bkColor: "#00FFFFFF"
    gradient:
        Gradient{
            GradientStop { position: 0.0; color: "#00FFFFFF" }
            GradientStop { position: 1.0; color: bkColor }
        }

    signal clicked
    Image {
        id: img
        source: imageSource
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Text {
        id: img_text
        anchors.top: img.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr(parent.text)
        color: "#ffffff"

        font{
            pointSize: 9
            family: "微软雅黑"
            bold: true
        }
    }
    MouseArea{
        hoverEnabled: true
        anchors.fill: parent
        onClicked:{
            root.clicked()

        }
        onEntered:bkColor="#77FFFFFF"
        onExited: bkColor="#00FFFFFF"
        onPressed: bkColor="#AAFFFFFF"
        onReleased: bkColor="#77FFFFFF"

    }

}
