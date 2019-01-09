import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ToolButton {
    id: ctrl

    background: Rectangle {
        implicitWidth: parent.parent.width
        implicitHeight: 40
        color: ctrl.hovered ? "#f3f3f3" : "lightgrey"
    }

}
