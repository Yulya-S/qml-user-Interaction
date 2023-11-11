import QtQuick 2.0

Item {
    anchors.fill: parent
    property alias comText: t.text
    property alias comColor: t.color
    Text{
        id: t
        anchors.centerIn: parent
        color: "black"
    }
}
