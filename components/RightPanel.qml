// LeftPanel.qml
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtLocation 5.15
import QtPositioning 5.15

Rectangle {
    id: rightPanel
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    anchors.left: leftPanel.right
    color: "#0F172A"

    Plugin {
        id: mapPlugin
        name: "osm"

        PluginParameter {
            name: "osm.mapping.providersrepository.disabled"
            value: "true"
        }

        PluginParameter {
            name: "osm.mapping.providersrepository.address"
            value: "http://maps-redirect.qt.io/osm/5.15/"
        }

        PluginParameter {
            name: "osm.mapping.offline.directory"
            value: "/tmp/osm.offline"
        }

        PluginParameter {
            name: "osm.mapping.cache.directory"
            value: "/tmp/osm.cache"
        }
    }

    Map {
        id: osmMap
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(10.8022, 106.6399) // Etown 2
        zoomLevel: 15
    }
}
