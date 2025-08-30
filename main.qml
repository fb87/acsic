import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import "components" as Screen

Window {

    width: 3840
    height: 1100
    visible: true

    FontLoader {
        id: nerdFont
        source: "assets/fonts/ProFontIIxNerdFont-Regular.ttf"
    }

    Row {
        anchors.fill: parent

        Screen.LeftPanel {
            id: leftPanel
        }

        Screen.RightPanel {
            id: rightPanel
        }
    }
}
