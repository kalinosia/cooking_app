import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 1200
    height: 800
    //x: screen.desktopAvailableWidth - width - 12  // frameless
    //y: screen.desktopAvailableHeight - height - 48  //frameless
    title: "Gotujmy"

    //flags: Qt.FramelessWindowHint | Qt.Window  // frameless



    Rectangle {
        anchors.fill: parent

        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "./images/bg1.png"  // <----------- bg
            fillMode: Image.PreserveAspectCrop

        }
    }

    GridLayout {
        id: grid
        columns: 2
        rows: 3

        ColumnLayout {
            spacing: 2
            Layout.columnSpan: 1
            Layout.preferredWidth: 600
            Layout.preferredHeight: 300

            RowLayout {
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                Rectangle {
                    color: "steelblue"
                    anchors.fill: parent
                    Layout.alignment: Qt.AlignHCenter

                    Text {
                        id: leftlabel


                        color: "#123"
                        font.pointSize: 16
                        text: "Składniki"
                        Layout.preferredHeight: 100

                    }
                }
            }
            RowLayout {
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                Text {
                    id: leftlabel1
                    Layout.alignment: Qt.AlignHCenter
                    color: "#123"
                    font.pointSize: 16
                    text: "Przepis"
                    Layout.preferredHeight: 100

                }

            }
        }

        ColumnLayout {
            id: rightcolumn
            spacing: 2
            Layout.columnSpan: 1
            Layout.preferredWidth: 600
            Layout.preferredHeight: 400
            Layout.fillWidth: true


            Image {
                sourceSize.width: parent.width
                sourceSize.height: parent.height
                source: "./images/bggif.gif"  // <----------- bg
                fillMode: Image.PreserveAspectCrop


            }

            //Text {
            //    anchors {
            //        bottom: parent.bottom  // By default text appears in the top left
            //        bottomMargin: 12
            //        left: parent.left
            //        leftMargin: 12
            //    }
            //    text: "16:38:33"
            //    font.pixelSize: 24
            //   color: "#320"
            //}
            }
        }
    }
