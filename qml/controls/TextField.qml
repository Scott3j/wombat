import QtQuick 2.13
import QtQuick.Controls 2.13

import "../."
import "."

Item {
    id: control

    property alias text: textField.text
    property alias placeholderText: textField.placeholderText
    property alias labelText: label.text
    property alias hintText: hint.text

    height: label.height + textField.height + 5
    implicitWidth: textField.width

    Label {
        id: label

        anchors {
            left: control.left
            leftMargin: 5
        }
    }

    Label {
        id: hint
        anchors {
            right: control.right
            rightMargin: 5
        }

        color: Qt.darker(Style.textColor3, 1.6)
    }

    TextField {
        id: textField

        anchors {
            top: label.bottom
            topMargin: 5
        }

        color: Style.textColor
        placeholderTextColor: Style.borderColor

        background: Rectangle {
            implicitHeight: 40
            implicitWidth: 400
            color: Style.bgInputColor
            border.color: Style.borderColor
        }
    }
}
