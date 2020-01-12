import QtQuick 2.11
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

// Delegate是展示一个Item的模板
Component{
    Rectangle{
        id: taskDelegateItem
        width: parent.width
        height: !expanded ? 48 : (tArea.height + 96 > 128) ? tArea.height + 96 : 128  // 随着回车跟着变高，输入字不会超出矩形区域
        radius: 8
        color: "#222231" //white

        property bool expanded: false

        ColumnLayout{
            width: parent.width  // 需要的，不然右边展开按钮离左边很近
            height: parent.height
            spacing: 0

            Rectangle{
                Layout.fillWidth: true
                Layout.preferredHeight: 48
                color: "transparent"

                RowLayout{
                    anchors.fill: parent
                    spacing: 0

                    // 圆圈离左边距离
                    Rectangle{
                        Layout.leftMargin: 18
                        width: 13
                        height: 12
                        radius: height / 2
                        color: "transparent"
                        border.color: taskUI.rand_color[ind%7] //非顶层role或item，得加上前缀才能访问这个附加属性
                        border.width: 1
                    }

                    // 中间文字部分
                    Column{
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.topMargin: 18

                        Text{
                            text: title       // model的属性
                            leftPadding: 18
                            // horizontalAlignment: Text.AlignLeft   // 这句不需要，外面布局加里面条件已经左对齐了
                            color: "white"
                        }

                        Text{
                            text: "Project: " + section
                            color: "#727272"
                            leftPadding: 18
                            visible: taskDelegateItem.expanded
                        }
                    }

                    // 最右侧展开按钮
                    IconicButton {
                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                        Layout.rightMargin: 18
                        color: "#727272"
                        text: "\uf1d8"

                        onClicked: {
                            taskDelegateItem.expanded = !taskDelegateItem.expanded
                        }
                    }

                }
            }

            // 拉伸时才可见,文字记录
            Rectangle{
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.leftMargin: 18
                color: "transparent"

                visible: taskDelegateItem.expanded

                TextArea {
                    id: tArea
                    width: parent.width
                    selectByMouse: true
                    selectionColor: "orange"        // 选中区域的前景色
                    selectedTextColor: "white"      // 选中的字体颜色
                    padding: 0
                    topPadding: 6
                    font.pixelSize: 12
                    color: "#727272"
                    cursorDelegate: Component{
                        Rectangle{
                            width: 1
                            height: 1
                            color: "transparent"
                        }
                    }
                }
            }

            // 拉伸时才可见,右下角4个字体图标
            Rectangle{
                Layout.fillWidth: true
                Layout.preferredHeight: 48
                Layout.alignment: Qt.AlignBottom
                color: "transparent"

                visible: taskDelegateItem.expanded

                Row{
                    spacing: 8

                    anchors {
                        top: parent.top
                        bottom: parent.bottom
                        right: parent.right
                        topMargin: 18
                        bottomMargin: 18
                        rightMargin: 18
                    }

                    Text {
                        font.family: mainFont.name
                        font.pixelSize: 20
                        color: "#727272"
                        text: "\uf150"
                    }

                    Text {
                        font.family: mainFont.name
                        font.pixelSize: 20
                        color: "#727272"
                        text: "\ufc92"
                    }

                    Text {
                        font.family: mainFont.name
                        font.pixelSize: 20
                        color: "#727272"
                        text: "\ufb42"
                    }

                    Text {
                        font.family: mainFont.name
                        font.pixelSize: 20
                        color: "#727272"
                        text: "\uf224"
                    }
                }

            }
        }
    }
}
