import QtQuick 2.0

Item {

    id:btn_iem
    property alias text: rex.txt.text
    Rectangle{
        id:rec
        width:50
        height: 100
        Text{
            id:txt
            text:"123456"
        }
    }
}
