import QtQuick
import QmlCppExample


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML and Cpp integration")

    LumberSawController {
        id: controller0
    }

    LumberSawController {
        id: controller1
        sawSpeed: 5
    }

    Column {
        spacing: 10
        Text {
            text: "Lumber mill control center"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 18
        }

        Row {
            spacing: 20
            LumberSawBlock {
                name: "Saw1"
                controller: controller0
            }

            LumberSawBlock {
                name: "Saw2"
                controller: controller1
            }
        }
    }

    Image {
        width: 100
        height: 24
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 10
        }
        source: "assets/built-with-qt-badge.png"
    }
}
