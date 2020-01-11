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

        Text{
            Layout.fillWidth: true
            text: "查询"
            font.pixelSize: 12
            color: "white"

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
