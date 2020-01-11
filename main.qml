import QtQuick 2.11
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "components" as Comp

ApplicationWindow{
    visible: true
    width: 360
    height: 600
//"#ff424c"
    FontLoader {id: mainFont; source: "fonts/materialdesignicons-webfont.ttf"}
    property var rand_color: ["dodgerblue", "white", "#00c1ed", "#ff9700", "#00a8b", "yellow", "#00ed06"]

    Rectangle{
        anchors.fill:parent
        color: "#191920"

        ColumnLayout{
            anchors{
                fill:parent
                leftMargin: 18
                rightMargin:18
                topMargin:28
                bottomMargin: 36
            }

            Comp.NormalSearchBar{
                Layout.fillWidth: true
                // Layout.fillHeight: true
                Layout.preferredHeight: 48
            }

            // 日期
            Rectangle{
                Layout.fillWidth:true
                Layout.preferredHeight: 24
                Layout.topMargin: 16
                Layout.bottomMargin: 4
                color:"transparent"

                Text{
                    text:qsTr("1月9号星期五")
                    font.family: "新宋体"
                    font.pixelSize: 21
                    color:"white"
                    renderType: Text.NativeRendering
                }
            }

            // 列表
            Rectangle{
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"

                ListView{
                    id: lview
                    anchors.fill:parent
                    spacing:12
                    model:Comp.TaskModel{}
                    delegate: Comp.TaskDelegate{}
                    section.property: "section"
                    section.delegate: Comp.TaskSection{}
                    clip: true  // 防止拖动列表跑出区域
                }
            }

            Comp.ButtonPrimary{
                Layout.fillWidth:true
                Layout.preferredHeight: 48
            }
        }
    }
}
