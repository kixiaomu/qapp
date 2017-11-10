import QtQuick 2.0
import QtQuick.Controls 2.2

Rectangle {
    id:root
    //radius: 10
    property bool  isMax: false     //标题栏最大化(还原)
    color: "transparent"
    Text {
        id: title_name
        text: qsTr("360卫士")
        x:parent.x+20
        font.pixelSize: 20
        font.bold: true
        color: "white"
    }
}
