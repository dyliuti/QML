import QtQuick 2.11
import QtQuick.Controls 2.3

Button {
    id: icb

    property color color: "white"   // 动态属性
    property int textSize: 12

    background: Rectangle{
        implicitWidth: icb.contentItem.width
        implicitHeight: 48
        color: "transparent"
    }

    contentItem: Text{
        verticalAlignment: Text.AlignVCenter
        text: icb.text
        font.family: mainFont.name
        font.pixelSize: textSize
        color: icb.color
    }
}
