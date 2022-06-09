import QtQuick
import QtQuick.Controls.Basic

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
            source: "./images/bg.png"  // <----------- bg
            fillMode: Image.PreserveAspectCrop

        }


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
                text: "16:38:33"
                font.pixelSize: 24
                color: "#320"
            }

        }
    }
}