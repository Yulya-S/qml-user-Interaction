import QtQuick 2.0
import QtQuick.Layouts 1.1

Item {
    id: itm
    Layout.fillHeight: true
    Layout.fillWidth: true
    property alias boxWidth: itm.width
    property alias boxText: text.comText
    property alias boxTextColor: text.comColor
    property alias boxColor: rec.color
    Rectangle{
        id: rec
        TextInCenter{ id: text }
        anchors.fill: parent
        color: "light gray"
        border.width: 1
        border.color: "silver"
        radius: 2
    }
}
