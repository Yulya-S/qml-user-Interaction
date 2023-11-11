import QtQuick 2.0
import QtQuick.Layouts 1.1

Item {
    Layout.alignment: Qt.AlignCenter
    width: window.width - 30
    height: 8 * (window.height / 10) - 30
    property alias boxText: text.comText
    Rectangle{
        anchors.fill: parent
        border.width: 1
        border.color: "silver"
        TextInCenter{ id: text }
    }
}
