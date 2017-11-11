import QtQuick 2.0

Rectangle{
    id:root
    width: 32
    height: 32
    color: "transparent"
    property string mouse_state: ""
    property string hover_pic: ""
    property string normal_pic: ""
    property string pressed_pic: ""
    signal clicked()
    Image {
        anchors.fill: parent
        source: normal_pic
        MouseArea{
            hoverEnabled: true
            anchors.fill: parent
            onEntered: parent.source=hover_pic
            onExited:parent.source=normal_pic
            onPressed:parent.source=pressed_pic
            onReleased:parent.source=normal_pic
            onClicked: root.clicked()
        }
    }
}
