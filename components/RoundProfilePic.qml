import QtQuick 2.11
import QtGraphicalEffects 1.3

Rectangle{
    id: prop_parent
    // anchors.fill: parent    // 顶层就是圆形（虽然是矩阵形成的）
    property url source: ""
    color: "transparent"        // 需要时透明的，不然mask中透明处会显示

    Image{
        id: img
        sourceSize: Qt.size(parent.width, parent.width)
        source: prop_parent.source
        visible: false
    }

    Image{
        id: mask
        sourceSize: Qt.size(parent.width, parent.width)
        source: "../images/mask-24.png"    // 显示非透明区域
        visible: false
    }

    OpacityMask{
        anchors.fill: parent
        source: img
        maskSource: mask
    }
}
