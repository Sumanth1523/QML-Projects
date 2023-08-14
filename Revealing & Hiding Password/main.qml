import QtQuick 2.12
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import QtQuick.Layouts 1.0

Window {
    id: parent
    visible: true
    width: 1000
    height: 1000
    title: qsTr("Keyboard-Reveal Icon Issue")

    Rectangle {
        color: "lightblue"
        width: parent.width / 2
        height: parent.height / 2
        anchors.centerIn: parent





                RowLayout {
                    TextField {
                        id: passwordInput
                        width: parent.width - revealButton.width
                        placeholderText: "Password"
                        echoMode: passwordVisible ? TextInput.Password : TextInput.Normal
                    }

                    Image {
                        id: revealButton
                        sourceSize.width:  passwordInput.height
                        sourceSize.height: passwordInput.height
                        source: passwordVisible ? "hide.png" : "show.png"
                        MouseArea {
                            width: parent.width
                            height: parent.height
                            onClicked: {
                                passwordVisible = !passwordVisible;
                            }
                        }
                    }
                }
            }




    property bool passwordVisible: false
}
