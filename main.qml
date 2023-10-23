import QtQuick
import QtQuick.Controls
import QtWebEngine 1.15
import QtQml 2.12
ApplicationWindow {
    width: 1024
    height: 600
    visible: true
    title: qsTr("Hello World")

//    SplitView{
//        anchors.fill: parent
//        orientation: Qt.Horizontal

//        Component{
//            id: sidecoloumn
//             Component.onCompleted: console.log("Completed Running!")

//            Rectangle{
//                width: 200
//                //Layout.fillHeigth: true
//                color: "blue"
//            }

//        }

//        Loader{
//            sourceComponent: sidecoloumn
//        }

        WebEngineView{
            anchors.fill: parent
            url: "qrc:/mapbuild1.html";
            webChannel:channel
        }
    }


//            Item{
//                width:parent.width* 0.7
//             }
//                Rectangle{
//                width: parent.width*0.3

//                   Rectangle{
//                    width: parent.width
//                    Layout.fillWidth: true


//                    TextInput{
//                        width: parent.width
//                        PlaceholderText: "Username"
//                    }
//                    TextInput{
//                        width: parent.width
//                        PlaceholderText: "password"
//                    }
//                    Button{
//                        text:"Login"
//                        anchors.centerIn: parent
//                    }
//                }
//            }

//        }

//}
