/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0

Item {
    width: 119
    height: 111
    rotation: -45

    property alias sugarAmount: timeline.currentFrame

    Rectangle {
        id: cube1
        x: 21
        y: 8
        width: 48
        height: 48
        color: "#ffffff"
        scale: 0.5
        opacity: 0
    }

    Rectangle {
        id: cube2
        x: 74
        y: 40
        width: 32
        height: 32
        color: "#ffffff"
        scale: 0.5
        opacity: 0
    }

    Rectangle {
        id: cube3
        x: 45
        y: 62
        width: 24
        height: 24
        color: "#ffffff"
        scale: 0.5
        opacity: 0
    }

    Timeline {
        id: timeline
        enabled: true
        endFrame: 10
        startFrame: 0

        KeyframeGroup {
            target: cube1
            property: "opacity"

            Keyframe {
                value: 1.0
                frame: 2
            }
        }

        KeyframeGroup {
            target: cube1
            property: "scale"

            Keyframe {
                value: 1
                frame: 4
            }
        }

        KeyframeGroup {
            target: cube2
            property: "opacity"

            Keyframe {
                value: 0
                frame: 2
            }
            Keyframe {
                value: 1.0
                frame: 4
            }
        }

        KeyframeGroup {
            target: cube2
            property: "scale"

            Keyframe {
                value: 0.5
                frame: 3
            }
            Keyframe {
                value: 1
                frame: 7
            }
        }

        KeyframeGroup {
            target: cube3
            property: "opacity"

            Keyframe {
                value: 0
                frame: 5
            }
            Keyframe {
                value: 1.0
                frame: 7
            }
        }

        KeyframeGroup {
            target: cube3
            property: "scale"

            Keyframe {
                value: 0.5
                frame: 6
            }
            Keyframe {
                value: 1
                frame: 10
            }
        }
    }
}
