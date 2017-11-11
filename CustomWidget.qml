import QtQuick 2.0
import QtQuick 2.9
Rectangle{
    id:root
    state:"hide"
    states: [
        State {
            name: "active"
            PropertyChanges {
                target: root
                x:100

            }
        },
        State{
            name:"hide"
            PropertyChanges {
                target:root
                x:0
                y:0
                width:0
                height:0

            }

        }
    ]
}
