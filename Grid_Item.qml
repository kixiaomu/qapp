import QtQuick 2.0

Item {
    id:container
    width: 100
    height: 100
    property alias img_url: custom_image.source
    signal click();
    Rectangle{
        anchors.fill: parent
        border.color: "green"
        radius: 10
    }
    Image {
        id: custom_image
        anchors.fill: parent
        source: ""
    }
    MouseArea{
        id:mouse
        anchors.fill: parent
        onClicked: container.click()
    }

}
