import QtQuick 2.0
import QtQuick.Window 2.0



Window
{
    visible: true
    width: 800
    height: 600
    
    Item{
        id: size
        property int part: 10
        property int fontsize: 10
    }
    
    //Heure
    Rectangle {
        x: parent.width/3
        y: 0
        width: parent.width/3
        height: parent.height/20
        color: "white"
        border.width:1
    }
    
    
    
  //Master
    Rectangle {
        
        x: parent.width/size.part
        y: parent.height/size.part
        width: 8*(parent.width/size.part)
        height:  8*(parent.height/size.part)
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
                sourceSize.width: Math.min(parent.width/1.5,parent.height/1.5)
                sourceSize.height: Math.min(parent.width/1.5,parent.height/1.5)
                anchors.centerIn: parent
                source:"Icons/rain.svg"
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
                font.family: "AnjaliOldLipi"
                font.bold : true
            }
            Text {
                id: temperature
                text: "20 °C"
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: (parent.height+parent.width)/10
                font.family: "Khmer OS"
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
                font.family: "AnjaliOldLipi"
                font.bold : true
            }
            Text {
                id: pression
                text: "996 hPa"
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: (parent.height+parent.width)/10
                font.family: "Khmer OS"
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
                font.family: "AnjaliOldLipi"
                font.bold : true
            
            }
            Text {
                id: humidity
                text: "60 %"
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: (parent.height+parent.width)/10
                font.family: "Khmer OS"
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
                text: "Tendance"
                color: "#000000"
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "AnjaliOldLipi"
                font.bold : true
                font.pixelSize: (parent.height+parent.width/2)/15
            }
            Image{
                sourceSize.width: Math.min(parent.width/2,parent.height/2)
                sourceSize.height: Math.min(parent.width/2,parent.height/2)
                anchors.centerIn: parent
                source:"Icons/f.svg"
            }
        }
    }
}
