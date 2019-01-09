import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "customs"

ApplicationWindow {
    visible: true
    width: 800
    height: 500
    title: qsTr("Manager")


    menuBar: HeaderMenu {}


    Body {
        anchors.fill: parent
    }


}
