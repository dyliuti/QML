import QtQuick 2.1
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3

Button{
    background: Rectangle{
        implicitWidth: 128
        implicitHeight: 48
        radius: 12
        color: "#00a8b0"
    }

    contentItem: Rectangle{
        anchors.fill: parent
        color: "transparent"

        RowLayout {
            anchors.centerIn: parent
            height: parent.height

            Text{
                font.family: mainFont.name
                font.pixelSize: 22
                text: "\uf415"
                color: "white"
            }

            Text {
                text: qsTr("添加新任务")
                font.family: "新宋体"
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "white"
            }
        }
    }


}
