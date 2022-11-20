/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import CofeeTest







Row {
        id: row
        signal clicked
        property alias text: brewLabel.text
        property bool forward: true
        property int back: 1
        layoutDirection: row.forward ? Qt.LeftToRight : Qt.RightToLeft
        spacing: 17

        Text {
            id: brewLabel
            color: "#ffffff"
            text: qsTr("Brew Me a CUP")
            wrapMode: Text.WrapAnywhere
            //font.family: Constants.fontFamily
            font.pixelSize: 64
            font.capitalization: Font.AllUppercase
        }

        Image {
            id: image
            anchors.verticalCenter: parent.verticalCenter
            source: row.forward ? "images/ui_controls/buttons/go/white.png" : "images/ui_controls/buttons/back/white.png"
            scale: mouseArea.containsMouse ? 1.1 : 1

            MouseArea {
                id: mouseArea
                hoverEnabled: true

                anchors.fill: parent
                Connections {
                    target: mouseArea
                    onClicked: row.clicked()
                }
            }
        }

}

