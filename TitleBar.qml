import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.0
import QtQuick.Layouts 1.3

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

    SysBtn{
        id:sysBtn_close
        hoverPic:"qrc:/images/close_hover.png"
        pressedPic:"qrc:/images/close_pressed.png"
        normalPic:"qrc:/images/close_normal.png"
        anchors.right: parent.right
        onClicked: Qt.quit()
    }
    SysBtn{
        id:sysBtn_min
        hoverPic:"qrc:/images/min_hover.png"
        pressedPic:"qrc:/images/min_pressed.png"
        normalPic:"qrc:/images/min_normal.png"
        anchors.right: sysBtn_close.left
        onClicked: {
            mainWindow.showMinimized()
            console.log("min btn is clicked")
        }
    }

    SysBtn{
        id:sysBtn_skin
        anchors.right:sysBtn_min.left
        hoverPic: "qrc:/images/skin_hover.png"
        pressedPic: "qrc:/images/skin_pressed.png"
        normalPic: "qrc:/images/skin_normal.png"
    }
    SysBtn{
        id:sysBtn_medal
        anchors.right: sysBtn_skin.left
        hoverPic:"qrc:/images/medal_normal.png"
        pressedPic:"qrc:/images/medal_hover.png"
        normalPic:"qrc:/images/medal_normal.png"
    }
}
