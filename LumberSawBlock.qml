import QtQuick
import QtQuick.Controls.Basic
import QmlCppExample

Column {
    id: root
    spacing: 10
    property string name: ""
    required property LumberSawController controller

    Text {
        text: root.name
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 14
    }

    AnimatedImage {
        id: sawImage
        width: 200
        height: 200
        playing: root.controller.isWorking
        source: "assets/circular-saw.gif"
        speed: root.controller.sawSpeed
    }

    Row {
        spacing: 10
        Button {
            text: "Start"
            onClicked: {
                root.controller.start()
                console.log("Start(), sawController isWorking=", root.controller.isWorking)
            }
        }

        Button {
            text: "Stop"
            onClicked: {
                root.controller.stop()
                console.log("Stop(), sawController isWorking=", root.controller.isWorking)
            }
        }
    }

    Slider {
        id: slider
        width: 200
        from: 0
        to: 5
        value: root.controller.sawSpeed
        onValueChanged: {
            root.controller.sawSpeed = value
            console.log("sawController speed=", root.controller.sawSpeed, " isWorking=", root.controller.isWorking);
        }
    }
}
