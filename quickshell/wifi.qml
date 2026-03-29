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



    
  Process{
	running: true
	command: ["bash", "-c", ` tail -n +2 <<< $(nmcli -f IN-USE,SSID,RATE,SIGNAL device wifi list | awk '$1 != "--"')`]
	stdout: StdioCollector{
		onStreamFinished: {
			//console.log(stringToLines(this.text))
			wifiData=stringToLines(this.text) 
		}
	}
  }	

  property var wifiData

  ListView{
	id: wifiListView
	anchors.fill : parent 
       	
	ScrollBar.vertical: ScrollBar{

	}

	model: wifiData.length/4 
        delegate: Item {
            width: wifiListView.width
            height: childrenRect.height

	    Column {

                Row{
                    width: wifiListView.width
                    height: 40
		    //color: "gray"
		    spacing: 2

		    Text {
			    text: lineToArray(wifiData[index]).toString()
		    }
                }
            }
    	}
  }
  function stringToLines(string){
	  return string.split('\n')
  }
  function lineToArray(string){
	  console.log(string.trim().split(/\s+/))
	  return string.trim().split(/\s+/); 
  }	

}

