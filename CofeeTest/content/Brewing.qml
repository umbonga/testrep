import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import CofeeTest

BrewingForm {
    id: root
    function start() {
        animation.start()
    }

    signal finished()

    SequentialAnimation {
        id: animation
        PropertyAction {
            target: root
            property: "state"
            value: "initial state"
        }
        PauseAnimation {
            duration: 1500
        }
        PropertyAction {
            target: root
            property: "state"
            value: "coffeee"
        }
        PauseAnimation {
            duration: 1500
        }
        PropertyAction {
            target: root
            property: "state"
            value: "milk"
        }
        PauseAnimation {
            duration: 1500
        }
        ScriptAction {
            script: root.finished()
        }
    }

    Behavior on cup.coffeeAmount {
        PropertyAnimation {

        }
    }

    Behavior on cup.milkAmount {
        PropertyAnimation {
        }
    }

    Behavior on cup.foamAmount {
        PropertyAnimation {
        }
    }


}
