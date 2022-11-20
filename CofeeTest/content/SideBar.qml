
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import CofeeTest



SideBarForm {
    id: sideBar
    property string currentCoffee: qsTr("Cappuccino")
    signal coffeeSelected
    property real currentFoam: 1
    property real currentMilk: 0
    property real currentCoffeeAmount: 4

    Behavior on currentMilk {
         NumberAnimation { duration: 250 }
    }

    Behavior on currentCoffeeAmount {
         NumberAnimation { duration: 250 }
    }

    macchiatoButton.onClicked: {
        sideBar.currentCoffee = qsTr("Macchiato")
        sideBar.currentFoam = 1
        sideBar.currentMilk = 1
        sideBar.currentCoffeeAmount = 4
        sideBar.coffeeSelected()
    }

    latteButton.onClicked: {
        sideBar.currentCoffee = qsTr("Latte")
        sideBar.currentFoam = 1
        sideBar.currentMilk = 10
        sideBar.currentCoffeeAmount = 3
        sideBar.coffeeSelected()
    }

    espressoButton.onClicked: {
        sideBar.currentCoffee = qsTr("Espresso")
        sideBar.currentFoam = 0
        sideBar.currentMilk = 0
        sideBar.currentCoffeeAmount = 4
        sideBar.coffeeSelected()
    }

    cappuccinoButton.onClicked: {
        sideBar.currentCoffee = qsTr("Cappuccino")
        sideBar.currentFoam = 1
        sideBar.currentMilk = 7
        sideBar.currentCoffeeAmount = 3.5
        sideBar.coffeeSelected()
    }
}
