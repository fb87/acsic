// LeftPanel.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: root
    width: parent.width * 0.3
    height: parent?.height ?? 1100

    property color topColor: "#1F1E1D"
    property color bottomColor: "#0F172A"

    gradient: Gradient {
        GradientStop {
            position: 0.0
            color: root.topColor
        }
        GradientStop {
            position: 1.0
            color: root.bottomColor
        }
    }

    // 🔁 Animate topColor
    SequentialAnimation {
        loops: Animation.Infinite
        running: true
        ColorAnimation {
            to: "#334155"
            duration: 4000
            easing.type: Easing.InOutQuad
        }
        ColorAnimation {
            to: "#1F1E1D"
            duration: 4000
            easing.type: Easing.InOutQuad
        }
    }

    // 🔁 Animate bottomColor
    SequentialAnimation {
        loops: Animation.Infinite
        running: true
        ColorAnimation {
            to: "#1E293B"
            duration: 4000
            easing.type: Easing.InOutQuad
        }
        ColorAnimation {
            to: "#0F172A"
            duration: 4000
            easing.type: Easing.InOutQuad
        }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        // 🔝 Top Bar
        Rectangle {
            id: topBar
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            color: Qt.rgba(0.15, 0.21, 0.29, 0.5)

            GridLayout {
                id: topGrid
                anchors.fill: parent
                columns: 3
                rowSpacing: 0
                columnSpacing: 0

                // Cell 1
                Item {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignCenter

                    Text {
                        text: "\udb83\udc4d" // power icon
                        font.pixelSize: 50
                        color: "red"
                        anchors.centerIn: parent
                    }
                }

                // Cell 2
                Item {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignCenter

                    Text {
                        text: "\udb83\udd64" // gear icon
                        font.pixelSize: 50
                        color: "orange"
                        anchors.centerIn: parent
                    }
                }

                // Cell 3
                Item {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignCenter

                    Text {
                        text: "\udb83\udc4a" // folder icon
                        font.pixelSize: 50
                        color: "white"
                        anchors.centerIn: parent
                    }
                }
            }
        }

        // 🏎️ Middle Area
        Rectangle {
            id: middleContent
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "transparent"

            Column {
                anchors.fill: parent
                anchors.margins: 20
                spacing: 20

                // 💡 Digits
                Text {
                    text: "\ueab5120\ueab6"
                    font.pixelSize: 120
                    font.bold: true
                    color: "cyan"
                    style: Text.Outline
                    styleColor: "black"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                // 🏷️ Unit
                Text {
                    text: "km/h"
                    font.pixelSize: 28
                    color: "white"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Item {
                    height: 20
                }

                Image {
                    id: carImage
                    source: "../assets/images/car-model-s.png"
                    fillMode: Image.PreserveAspectFit
                    smooth: true
                    width: parent.width * 0.6
                    height: undefined
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }

        // 🔻 Bottom Bar
        Rectangle {
            id: bottomBar
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            color: Qt.rgba(0.15, 0.21, 0.29, 0.5)

            GridLayout {
                id: bottomGrid
                anchors.fill: parent
                columns: 3
                rowSpacing: 0
                columnSpacing: 0

                // Cell 1
                Item {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignCenter

                    Text {
                        text: "\udb80\udd0b" // power icon
                        font.pixelSize: 50
                        color: "white"
                        anchors.centerIn: parent
                    }
                }

                // Cell 2
                Item {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignCenter

                    Text {
                        text: "\udb83\udd62" // gear icon
                        font.pixelSize: 50
                        color: "white"
                        anchors.centerIn: parent
                    }
                }

                // Cell 3
                Item {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignCenter

                    Text {
                        text: "\udb83\udd61" // folder icon
                        font.pixelSize: 50
                        color: "red"
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
}
