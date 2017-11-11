import QtQuick 2.9
import QtQuick.Controls 2.2

Rectangle{
    id:root
    property string hoverPic: ""
    property string normalPic: ""
    property string pressedPic: ""
    signal clicked
    color: "transparent"
    width: 32
    height: 32
    anchors.margins: 10
    Image {
        id:img
        anchors.verticalCenter: parent.verticalCenter
        source: root.normalPic
    }
    MouseArea{
        hoverEnabled: true
        anchors.fill: parent
        onEntered:img.source=hoverPic
        onPressed: img.source=pressedPic
        onReleased: img.source=normalPic
        onExited:img.source=normalPic
        onClicked: root.clicked()
    }

}
