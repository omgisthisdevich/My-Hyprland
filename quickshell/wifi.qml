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

  implicitWidth: 400
  implicitHeight: 300 



    
  Process{
	running: true
	command: ["bash", "-c", `nmcli -t -f IN-USE,SSID,RATE,SIGNAL dev wifi | grep -v '::' `]
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

	model: wifiData.length 
        delegate: Item {
            width: wifiListView.width
            height: childrenRect.height

	    MouseArea{
		    anchors.fill: parent
		    onClicked: {
		    	connectCMD.running=true	    
		    }
	    }
	    Process{
		    id: connectCMD
		    running: false
		    command: ['bash', '-c',  `echo wifi clicked`]
		    stdout: StdioCollector{
			    onStreamFinished: {
				    console.log('Button clicked')
			    }
		    }

	    }

	    Column {

                Rectangle{
                    width: wifiListView.width
                    height: 40
		    WifiEntry{
			    id: entry
			    wifiEntry: lineToArray(wifiData[index])		    
		    }
                }
            }
    	}
  }
  function stringToLines(string){
	 // console.log(string.split('\n').length)
 
	  return string.split('\n')
  }
  function lineToArray(string){
	  console.log(string.split(':'))
	  return string.split(':'); 
  }	

}



