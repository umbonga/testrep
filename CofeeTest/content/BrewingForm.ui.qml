/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import CofeeTest

Item {
    id: root
    width: Constants.width
    height: Constants.height
    clip: true
    property string coffeeName: qsTr("Cappuccino")
    property real foamAmount: 1
    property real milkAmount: 6
    property real coffeeAmount: 4
    property alias cup: cup

    state: ""

    Rectangle {
        id: rectangle
        color: Constants.backgroundColor
        anchors.fill: parent

        CupForm {
            id: cup
            x: 256
            y: 96
            anchors.horizontalCenterOffset: 150
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            questionVisible: false
            coffeeLabel: ""
            showLabels: false
            foamAmount: 0
            milkAmount: 0
            coffeeAmount: 0
            sugarAmount: 0
        }
    }
    Text {
        id: brewLabel

        color: "#ffffff"
        text: qsTr("Making ") + root.coffeeName
        anchors.topMargin: Constants.defaultMargin
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: Constants.fontFamily
        wrapMode: Text.WrapAnywhere
        font.pixelSize: 64
        font.capitalization: Font.AllUppercase
    }
    states: [
        State {
            name: "coffee"

            PropertyChanges {
                target: cup
                foamAmount: 0
                milkAmount: 0
                coffeeAmount: root.coffeeAmount
            }
        },
        State {
            name: "milk"
            PropertyChanges {
                target: cup
                foamAmount: root.foamAmount
                milkAmount: root.milkAmount
                coffeeAmount: root.coffeeAmount
            }

            PropertyChanges {
                target: brewLabel
                text: root.coffeeName + qsTr(" Ready")
            }
        }
    ]
}
