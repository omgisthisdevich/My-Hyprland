import Quickshell // for PanelWindow
import QtQuick // for Text
import QtQuick.Controls
import Quickshell.Io


PanelWindow {
//    id: profile
    // padding: 0
    anchors {
        top: true
        right: true
        // left: true
    }

  implicitWidth: 300
  implicitHeight: 300 



  function stringToArray(string){
  	return string.trim().split(/\s+/)
  }
  
  Process{
	running: true
	command: ["bash", "-c", `nmcli -f IN-USE,SSID,RATE,SIGNAL device wifi list | awk '$1 != "--"'`]
	stdout: StdioCollector{
		onStreamFinished: {
//			console.log(stringToArray(this.text))
			wifiData=stringToArray(this.text) 
		}
	}
  }	

  property var wifiData

  ListView{
	id: wifiListView
	anchors.fill : parent 
       	
	ScrollBar.vertical: ScrollBar{

	}

	model: 20
        delegate: Item {
            width: wifiListView.width
            height: childrenRect.height

            Column {
                Rectangle {
                    width: wifiListView.width
                    height: 40
                    color: "gray"

                    Text {
                        anchors.centerIn: parent
                        text: wifiData[4] 
                    }
                }

                //Text { text: "Subtitle " + modelData }
            }
        }
  }
}

