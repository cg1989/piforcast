import QtQuick 2.2
import QtQuick.Window 2.2


Window
{
    visible: true
    //visibility: "FullScreen"
    width: 800
    height: 480
    
    

    
    Item{
        id: size
        property int part: 12
        property int fontsize: 9
        property int offset_date: 2
    }
    
    //Heure
    Rectangle {
        x: 0
        y: (size.part-1)*(parent.height/size.part)
        width: size.offset_date*parent.width/size.part
        height: parent.height/size.part
        color: "white"
        Text {
            id:heure
            text: qsTr("%1")
            color: "#000000"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: (parent.height+parent.width)/10
            font.family: "Manjari Bold"            
        }
    }
    
    //Date
    Rectangle {
        x: (size.part-size.offset_date-0.5)*(parent.width/size.part)
        y: (size.part-1)*(parent.height/size.part)
        width: size.offset_date*parent.width/size.part
        height: parent.height/size.part
        color: "white"
        //border.width: 1
        Text {
            id: date
            text: qsTr("%1")
            color: "#000000"
            //anchors.horizontalCenter: parent.horizontalCenter
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: (parent.height+parent.width)/10
            font.family: "Manjari Bold"
        }
    }
    
    
  //Master ###########################################################################################
    Rectangle {
        
        x: parent.width/size.part
        y: parent.height/size.part
        width: (size.part-2)*(parent.width/size.part)
        height:  (size.part-2)*(parent.height/size.part)
        //anchors.fill: parent
        color: "grey"
        
        //Image
        Rectangle {
        x: parent.width/3
        y: 0
        width: 2*(parent.width/3)
        height: 2*(parent.height/3)
        //anchors.fill: parent
        color: "white"
            Image{
            id:image
                sourceSize.width: Math.min(parent.width/1.5,parent.height/1.5)
                sourceSize.height: Math.min(parent.width/1.5,parent.height/1.5)
                anchors.centerIn: parent
            }
        }
        
        //Temperature
        Rectangle {
            x: 0
            y: 0
            width: parent.width/3
            height: parent.height/3
            color: "white"
            Text {
                text: "Température"
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: (parent.height+parent.width)/10
                font.family: "Manjari regular"
                font.bold : true
            }
            Text {
                id: temperature
                text: qsTr("%1")
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: (parent.height+parent.width)/size.fontsize
                font.family: "Khmer OS"
            }
            Text {
                text: "°C"
                color: "#000000"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: (parent.height+parent.width)/13
                font.family: "Manjari regular"
            }
        }
        
        //Pression
        Rectangle {
            x: 0
            y: parent.height/3
            width: parent.width/3
            height: parent.height/3
            color: "white"
            Text {
                text: "Pression"
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: (parent.height+parent.width)/10
                font.family: "Manjari regular"
                font.bold : true
            }
            Text {
                id: pression
                text: qsTr("%1")
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: (parent.height+parent.width)/size.fontsize
                font.family: "Khmer OS"
            }
            Text {
                text: "hPa"
                color: "#000000"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: (parent.height+parent.width)/13
                font.family: "Manjari regular"
            }
        }
        
        //Humidité
        Rectangle {
            x: 0
            y: 2*(parent.height/3)
            width: parent.width/3
            height: parent.height/3
            color: "white"
            Text {
                text: "Humidité"
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: (parent.height+parent.width)/10
                font.family: "Manjari regular"
                font.bold : true
            
            }
            Text {
                id: humidity
                text: qsTr("%1")
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: (parent.height+parent.width)/size.fontsize
                font.family: "Khmer OS"
            }
            Text {
                text: "%"
                color: "#000000"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: (parent.height+parent.width)/13
                font.family: "Manjari regular"
            }
        }
        //ligne
         Rectangle {
            x: 0
            y: parent.height/3 - parent.height/20
            width: parent.width/3
            height: parent.height/200
            color: "black"
        
        }       
          Rectangle {
            x: 0
            y: 2*(parent.height/3) - parent.height/20
            width: parent.width/3
            height: parent.height/200
            color: "black"
        
        }           
        
        
        //tendances
        Rectangle {
            x: parent.width/3
            y: 2*(parent.height/3)
            width: 2*(parent.width/3)
            height: parent.height/3
            color: "white"
            Text {
                id:description
                text: qsTr("%1")
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "AnjaliOldLipi"
                font.bold : true
                font.pixelSize: (parent.height+parent.width/2)/16
            }
            Image{
            id:trend
                sourceSize.width: Math.min(parent.width/2,parent.height/2)
                sourceSize.height: Math.min(parent.width/2,parent.height/2)
                anchors.centerIn: parent
            }
        }
    }
    
    function update() {
    	var t = "%1"
        var p = "%1"
        var h = "%1"
        var i = "%1.svg"
        var img = "%1.svg"
        var des = "%1"
        sensor.refresh()
        temperature.text = t.arg(sensor.temp.toFixed(1))
        pression.text = p.arg(Math.round(sensor.pres))
        humidity.text = h.arg(sensor.humi.toFixed(0))
        trend.source = i.arg(sensor.tend)
        heure.text = new Date().toLocaleTimeString(Qt.locale("fr_FR"),"hh:mm:ss")
        date.text = new Date().toLocaleDateString(Qt.locale("fr_FR"),"dddd d MMMM")
        description.text = des.arg(sensor.des)
        image.source = img.arg(sensor.image)
	}
	
    Timer {
		id: globalTimer
		interval: 1000
		repeat: true
		running: true
		triggeredOnStart: true
		onTriggered: update()
	}
    
}
