import QtQuick 2.15
import QtQuick.Window 2.15

import "components" as Screen

Window {

    width: 3840
    height: 1100
    visible: true

    FontLoader {
        id: nerdFont
        source: "assets/fonts/ProFontIIxNerdFont-Regular.ttf"
    }

    QtObject {
        property string family: nerdFont.name
    }

    Row {
        anchors.fill: parent

        Screen.LeftPanel {
            id: leftPanel
        }

        Screen.RightPanel {
            id: rightPanel

            anchors.top: parent.top
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.left: leftPanel.right
        }
    }
}
