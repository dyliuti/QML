import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle{
    radius: 5
    color: "#222231"

    RowLayout{
        spacing: 8

        anchors {
           fill: parent
           leftMargin: 6
           rightMargin: 12
           bottomMargin: 8
        }

        IconicButton{
            text: "\uf35c"
            color: "white"
            textSize: 20
        }

        TextInput{
            id: textInput
            Layout.fillWidth: true
            inputMask: "请输入查询文本"
            font.pixelSize: 12
            color: "white"
            opacity: 0.3

            TextArea{
                anchors.verticalCenter: parent.verticalCenter
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "white"
                selectByMouse: true
                selectionColor: "orange"        // 选中区域的前景色
                selectedTextColor: "white"      // 选中的字体颜色
                cursorDelegate: Component{      // 将光标变为白色
                    Rectangle{
                        width: 1
                        height: 1
                        color: "white"
                    }
                }
            }

            MouseArea{
                anchors.fill: textInput
                onClicked: {
                    textInput.inputMask = ""
                    textInput.opacity = 1
                }
            }
        }

        Rectangle{              // Image placeholder
            width: 24
            height: 24
            radius: height / 2

            RoundProfilePic{
                anchors.fill: parent
                source: "../images/ZARD.jpeg"   // 属于prop_parent的属性,RoundProfilePic定义了动态属性才有
            }
        }
    }
}
