/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import CofeeTest


Flickable {
    id: flickable
    x: 0
    y: 0
    width: 354
    height: 768

    property alias macchiatoButton: macchiatoButton
    property alias latteButton: latteButton
    property alias espressoButton: espressoButton
    property alias cappuccinoButton: cappuccinoButton

    contentWidth: 250
    boundsBehavior: Flickable.StopAtBounds
    contentHeight: 1506
    clip: true

    Rectangle {
        id: background
        x: 0
        width: 354
        height: 1506
        color: "#eec1a2"
    }

    ColumnLayout {
        x: 52
        y: 0
        spacing: 64

        CoffeeButton {
            id: cappuccinoButton
            text: "Cappuccino"
        }

        CoffeeButton {
            id: espressoButton
            text: "Espresso"
            source: "images/icons/coffees/Espresso.png"
        }

        CoffeeButton {
            id: latteButton
            text: "Latte"
            source: "images/icons/coffees/Latte.png"
        }

        CoffeeButton {
            id: macchiatoButton
            text: "Macchiato"
            source: "images/icons/coffees/Macchiato.png"
        }
    }
}
