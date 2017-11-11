import QtQuick 2.0
import QtQuick.Layouts 1.3
Rectangle{
    color: "transparent"
    ColumnLayout{
        RowLayout{
            anchors.left: parent.left
            anchors.leftMargin: 20
            spacing:10
            ToolBtn{
                text:qsTr("电脑体验")
                imageSource:"qrc:/images/ico_Examine.png"
                onClicked: {

                }
            }
            ToolBtn{
                text:qsTr("木马查杀")
                imageSource:"qrc:/images/ico_dsmain.png"

            }
            ToolBtn{
                text:qsTr("系统修复")
                imageSource:"qrc:/images/ico_SysRepair.png"
            }
            ToolBtn{
                text:qsTr("电脑清理")
                imageSource:"qrc:/images/ico_TraceCleaner.png"
            }
            ToolBtn{
                text:qsTr("优化加速")
                imageSource:"qrc:/images/ico_SpeedupOpt.png"
            }
            ToolBtn{
                text:qsTr("电脑专家")
                imageSource:"qrc:/images/ico_expert.png"
            }
            ToolBtn{
                text:qsTr("电脑门诊")
                imageSource:"qrc:/images/ico_diannaomenzhen.png"
            }
            ToolBtn{
                text:qsTr("软件管家")
                imageSource:"qrc:/images/ico_softmgr.png"
            }
        }
        CustomWidget{
            id:pageTest
            height: 400
            Layout.fillWidth: true
            Page{
                anchors.fill: parent
            }
        }


    }


}
