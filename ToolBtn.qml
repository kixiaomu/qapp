import QtQuick 2.0

Rectangle{
    id:root
    width: 64
    height: 64
    color:"transparent"
    property string imageSource: ""
    signal clicked
    Image {
        id: img
        source: imageSource
    }
    MouseArea{
        anchors.fill: parent
        onClicked:root.clicked
    }
}
