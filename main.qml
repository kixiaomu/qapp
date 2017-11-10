import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    /*
    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }
    }
*/
    Rectangle{
        id:rect
        width: 320
        height: 480
        radius: 10
        color:"black"
        BusyIndicator {
            id: busy;
            running: true;
            anchors.centerIn: parent;
            z: 2;
        }

        Label {
            id: stateLabel;
            visible: false;
            anchors.centerIn: parent;
            z: 3;
        }
        Image {
            id: imageViewer

            anchors.fill: parent
            asynchronous: true
            cache:false
            fillMode: Image.PreserveAspectFit
            onStatusChanged: {
                if (imageViewer.status === Image.Loading) {
                    busy.running = true;
                    stateLabel.visible = false;
                }
                else if(imageViewer.status === Image.Ready){
                    busy.running = false;
                }
                else if(imageViewer.status === Image.Error){
                    busy.running = false;
                    stateLabel.visible = true;
                    stateLabel.text = "ERROR";
                }
            }
            source: ""
            MouseArea{
                width: parent.width
                height: parent.height
                onClicked: {
                    console.log("clicked imge")
                }
            }
        }

    }
    Grid{
        rows:2
        columns:2
        spacing: 3
        anchors.bottom: parent.bottom
        anchors.right: parent.right
       Grid_Item{
           img_url: "http://image18-c.poco.cn/mypoco/myphoto/20170607/01/5331983520170607015026010.jpg?666x1000_120"
           onClick: imageViewer.source=img_url
       }
       Grid_Item{
           img_url: "http://image17-c.poco.cn/mypoco/myphoto/20170912/13/17867363620170912132313022.jpg?1365x2048_120"
           onClick: imageViewer.source=img_url
       }
       Grid_Item{
           img_url: "http://image170-c.poco.cn/mypoco/myphoto/20171023/16/17385348320171023162949098.jpg?1658x2048_120"
           onClick: imageViewer.source=img_url
       }
       Grid_Item{
           img_url: "http://image170-c.poco.cn/mypoco/myphoto/20171102/19/5469858320171102190801032.jpg?876x1313_120"
           onClick: imageViewer.source=img_url
       }
    }
}

