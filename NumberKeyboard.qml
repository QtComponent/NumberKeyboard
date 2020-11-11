/**
 * Author: Qt君
 * WebSite: qthub.com
 * Email: 2088201923@qq.com
 * QQ交流群: 732271126
 * 关于更多: 扫码关注微信公众号: [Qt君] 第一时间获取最新推送.
 * ██████████████    ██      ██████████████    ██████████████
 * ██          ██  ████  ████    ██  ██        ██          ██
 * ██  ██████  ██    ██████              ██    ██  ██████  ██
 * ██  ██████  ██  ████  ██    ████████    ██  ██  ██████  ██
 * ██  ██████  ██      ██  ██      ██    ████  ██  ██████  ██
 * ██          ██  ██  ██      ████    ██  ██  ██          ██
 * ██████████████  ██  ██  ██  ██  ██  ██  ██  ██████████████
 *                         ██  ██████  ██████
 * ██████████  ██████████  ██  ████████████  ██  ██  ██  ██
 *       ██        ████        ██  ██    ██  ████████      ██
 *   ██  ██  ████  ████  ████████████  ██  ██  ██████
 *     ██████        ██████        ██  ██  ██████        ██
 *       ██████████  ██  ██  ██  ██  ██  ██  ██      ████
 *                 ██  ██  ██████  ████  ████████████  ██  ██
 * ████  ██████████    ██        ████  ██  ██  ██  ██  ██
 * ████    ████      ████  ██  ██████  ██████████        ██
 *   ██  ████  ██    ████  ██████    ██  ██      ██    ██
 * ████████      ██  ██      ████  ██    ████  ██████████  ██
 * ██    ████  ████  ██  ████    ████      ████  ████████
 * ██  ████  ██  ██      ██      ████    ██              ██
 * ██  ██████  ████    ████  ██████████    ██████████  ██████
 *                 ████    ████  ████  ██  ██      ██████████
 * ██████████████  ████        ██████    ████  ██  ██████
 * ██          ██    ████  ██  ██████  ██████      ████    ██
 * ██  ██████  ██  ████    ████  ██  ██    ██████████████████
 * ██  ██████  ██  ████        ██████████  ██        ██  ████
 * ██  ██████  ██  ██  ██████    ██  ████████  ████████████
 * ██          ██  ██    ██    ████    ██  ████  ██████  ██
 * ██████████████  ██████████      ██            ████  ██
 */
import QtQuick 2.0

Rectangle {
    id: rootKeyboard
    property color backgroundColor: "#202120"    //default
    property color pressedButtonColor: "#00a0fc" // default
    property color normalButtonColor: "#303751" // default
    width: 350
    height: 205
    radius: 8
    color: backgroundColor

    GridView {
        id: gridView
        anchors.fill: parent
        cellWidth: width/4
        cellHeight: height/4
        interactive: false
        
        model: [
            "1", "2", "3", "Back",
            "4", "5", "6", "OK",
            "7", "8", "9", "-",
            ".", "0", "<", ">"
        ]
        
        delegate: Item {
            width: gridView.cellWidth
            height: gridView.cellHeight
            
            Rectangle {
                anchors.centerIn: parent
                width: parent.width - 6
                height: parent.height - 6
                radius: 8
                color: if (modelData == "Back")
                            return mouseArea.pressed ? normalButtonColor : "red"
                       else
                            return mouseArea.pressed ? pressedButtonColor : normalButtonColor
                
                Text {
                    anchors.centerIn: parent
                    text: modelData
                    font.pixelSize: 18
                    color: "white"
                }
                
                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    // onClicked: 
                }
            }
        }
    }
}
