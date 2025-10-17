import Quickshell // for PanelWindow
import QtQuick // for Text
import QtQuick.Layouts // for *Layouts

import QtQuick.Controls
// import QtQuick.Layouts 1.3

PanelWindow {
    id: profile
    // padding: 0
    anchors {
        top: true
        right: true
        // left: true
    }

  implicitWidth:500
  implicitHeight: 700

    ColumnLayout {
        id: view
        anchors.fill: parent
        anchors.margins: 20

        Rectangle{
            color: "red"
            Layout.fillWidth: parent.width
            implicitHeight: 200

            ColumnLayout {
                anchors.fill: parent

                Label {
                    id: username
                    text: "omgisthisdevich"
                    font.pixelSize: 20
                    font.bold: true
                    font.family: "Arial"
                    Layout.alignment: Qt.AlignHCenter
                }            
                MenuSeparator {               
                    Layout.alignment: Qt.AlignHCenter
                }
            }
        }
        Rectangle{
            Layout.fillWidth: parent.width
            implicitHeight: 50
            color: "blue"

            NetworkManagerOptions{

            }
        }

        Rectangle{
            Layout.fillWidth: parent.width
            implicitHeight: 300
            color: "green"

            SettingControls{

            }
        }

        Rectangle{
            Layout.fillWidth: parent.width
            implicitHeight: 100
            color: "purple"
            clip: true

            Text{
                id: outText
                width: parent.width
                font.pixelSize: 15
                wrapMode: Text.Wrap
                y: -vbar.position * height
                text: "Scrollbar for script debug"
            }

            ScrollBar {
                id: vbar
                hoverEnabled: true
                size: parent.height / outText.height
                active: hovered || pressed
                orientation: Qt.Vertical
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.bottom: parent.bottom
            }

        }
        
    }
}

