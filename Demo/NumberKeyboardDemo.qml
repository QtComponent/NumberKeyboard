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
import "../"

Rectangle {
    anchors.centerIn: parent
    width: 730
    height: 655 
    color: "gray"

    property Component numberKeyboard: NumberKeyboard { }
    
    Grid {
        x: 10
        y: 10
        
        rows: 3
        columns: 2
        
        spacing: 10
        
        Repeater {
            model: [
                { 
                    backgroundColor: "#202120", 
                    pressedButtonColor: "#00a0fc",
                    normalButtonColor: "#303751"
                },
                { 
                    backgroundColor: "#ECF0F1",
                    pressedButtonColor: "#F1C40F",
                    normalButtonColor: "#F39C12"
                },
                { 
                    backgroundColor: "#ECF0F1",
                    pressedButtonColor: "#7F8C8D",
                    normalButtonColor: "#BDC3C7"
                },
                { 
                    backgroundColor: "#ECF0F1",
                    pressedButtonColor: "#2980B9",
                    normalButtonColor: "#3498DB"
                },
                { 
                    backgroundColor: "#ECF0F1",
                    pressedButtonColor: "#2ECC71",
                    normalButtonColor: "#27AE60"
                },
                { 
                    backgroundColor: "#ECF0F1",
                    pressedButtonColor: "#9B59B6",
                    normalButtonColor: "#8E44AD"
                }
            ]
            
            Loader {
                id: loader
                sourceComponent: numberKeyboard
                Component.onCompleted: {
                    loader.item.backgroundColor = modelData.backgroundColor
                    loader.item.pressedButtonColor = modelData.pressedButtonColor
                    loader.item.normalButtonColor = modelData.normalButtonColor
                }
            }
        }
    }
}
