import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import ".."

Component {

    Rectangle {
        anchors.fill: parent
        color: 'transparent'

        ColumnLayout {
            anchors.fill: parent
            spacing: 0

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 48
                color: 'transparent'
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "lightgrey"

                ScrollView {
                    anchors.fill: parent
                    anchors {
                        topMargin: 4
                        leftMargin: 4
                        bottomMargin: 4
                    }
                    clip: true

                    GridView {
                        anchors.fill: parent
                        cellWidth: 258
                        cellHeight: 288
                        model: HomeBaseModel {}

                        delegate: Rectangle {
                            width: 258
                            height: 288
                            color: "transparent"

                            Rectangle {
                                anchors.fill: parent
                                anchors.margins: 4

                                ColumnLayout {
                                    anchors.fill: parent
                                    anchors.margins: 12
                                    spacing: 4

                                    Image {
                                        id: img
                                        anchors.top: parent.top
                                        anchors.topMargin: 28
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        sourceSize.width: 48
                                        sourceSize.height: 48
                                        source: icon_source
                                    }


                                    Text {
                                        anchors.top: img.bottom
                                        anchors.topMargin: 8
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        text: name
                                        font.pixelSize: 13
                                        renderType: Text.NativeRendering
                                    }

                                    Text {
                                        id: vers
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        text: version
                                        font.pixelSize: 12
                                        renderType: Text.NativeRendering
                                    }

                                    Rectangle {
                                        anchors.top: vers.bottom
                                        anchors.topMargin: 8
                                        Layout.fillWidth: true
                                        Layout.preferredHeight: 48
                                        Text {
                                            width: parent.width
                                            text: description
                                            horizontalAlignment: Text.AlignHCenter
                                            wrapMode: Text.WordWrap
                                            renderType: Text.NativeRendering
                                        }
                                    }

                                    Button {
                                        anchors.bottom: parent.bottom
                                        anchors.horizontalCenter: parent.horizontalCenter
                                        text: method

                                        contentItem: Text {
                                            horizontalAlignment: Text.AlignHCenter
                                            verticalAlignment: Text.AlignVCenter
                                            text: parent.text
                                            font: parent.font
                                            color: "dodgerblue"
                                        }

                                        background: Rectangle {
                                            implicitWidth: 60
                                            implicitHeight: 36
                                            color: parent.hovered ? "lightgrey" : "white"
                                            border.color: "dodgerblue"
                                        }

                                    }


                                }

                            }

                        }


                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 48
                color: "transparent"

                Rectangle{
                    width:parent.width
                    height: 1
                    color: "lightgrey"
                }

            }
        }
    }

}
