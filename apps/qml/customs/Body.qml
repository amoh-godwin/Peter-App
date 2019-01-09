import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import "stack_components"

Rectangle {
    anchors.fill: parent

    RowLayout {
        width: parent.width
        height: parent.height
        spacing: 0

        Rectangle {
            Layout.preferredWidth: 240
            Layout.fillHeight: true

            SideMenu {}

            Rectangle {
                anchors.right: parent.right
                width: 1
                height: parent.height
                color: "lightgrey"
            }

        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            Rectangle {
                anchors.fill: parent
                anchors.margins: 16
                border.color: "lightgrey"

                StackView {
                    id: stack
                    anchors.fill: parent
                    initialItem: home
                }

                HomeComponent { id: home }

            }

        }

    }
}
