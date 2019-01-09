import QtQuick 2.11
import QtQuick.Controls 2.4

MenuBar {

        Menu {
            title: qsTr('&File')

            Action { text: "Preferences" }
            Action { text: "&Quit" }

        }

        Menu {
            title: qsTr('&Help')

            Action { text: "About Peter" }
            Action { text: "About Qt" }

        }

    }
