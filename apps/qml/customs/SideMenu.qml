import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ToolBar {
    anchors.fill: parent
    anchors.margins: 1

    ColumnLayout {
        width: parent.width
        spacing: 1

        SideMenuButton {
            text: qsTr('Home')
        }

        SideMenuButton {
            text: qsTr('Mappings')
        }

        SideMenuButton {
            text: qsTr('.htaccess')
        }

    }

    background: Rectangle {}

}
