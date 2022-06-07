import QtQuick
import QtQuick.Controls.Basic

ApplicationWindow {
    visible: true
    width: 1200
    height: 900
    //x: screen.desktopAvailableWidth - width - 12  // frameless
    //y: screen.desktopAvailableHeight - height - 48  //frameless
    title: "Gotujmy"

    //flags: Qt.FramelessWindowHint | Qt.Window  // frameless

    property string currTime: "00:00:00"
    property QtObject backend //3

    Rectangle {
        anchors.fill: parent

        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "./images/bggif.gif"  // <----------- bg
            fillMode: Image.PreserveAspectCrop

        }
        //time --------------------
        Connections {  //step 3 time
            target: backend
            function onUpdated(msg) {
                currTime = msg;
            }
        }
        // ----------------------

        Rectangle {  // By default Rectangle objects have a white background.
            anchors.fill: parent
            color: "transparent"

            Text {
                anchors {
                    bottom: parent.bottom  // By default text appears in the top left
                    bottomMargin: 12
                    left: parent.left
                    leftMargin: 12
                }
                text: currTime // text: "16:38:33"
                font.pixelSize: 24
                color: "#320"
            }

        }
    }
}