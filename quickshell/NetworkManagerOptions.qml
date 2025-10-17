import QtQuick
import QtQuick.Layouts // for *Layouts
import QtQuick.Controls //for Button


RowLayout{
    width: parent.width
    Layout.alignment: Qt.AlignHCenter
  
    Rectangle{
      Layout.fillWidth: true
      color: "red"
      
      Button {
        text:"󰤢"
        onClicked: model.submit()
      }
    }
    Rectangle{
      Layout.fillWidth: true
      color: "blue"

      Button {
          text: "󰂯"
          onClicked: model.revert()
      }
    }
    Rectangle{
      Layout.fillWidth: true
      color: "green"

      Button {
          text: "󰃝"
          onClicked: model.revert()
      }
    }
    Rectangle{
      Layout.fillWidth: true
      color: "green"

      Button {
          text: "󰃝"
          onClicked: model.revert()
      }
    }
    Rectangle{
      Layout.fillWidth: true
      color: "green"

      Button {
          text: "󰃝"
          onClicked: model.revert()
      }
    }
    
    
  }