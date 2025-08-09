import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Battleship")

    // The root Rectangle provides the background color for the entire window
    Rectangle {
        anchors.fill: parent
        color: "#2f3640" // A dark, military-style gray

        ColumnLayout {
            anchors.centerIn: parent
            spacing: 20

            // The title text for the game
            Text {
                text: "BATTLESHIP"
                color: "#c2d1c2" // A muted green for a military feel
                font.family: "Courier" // A monospaced font for a terminal/military look
                font.pixelSize: 40
                anchors.horizontalCenter: parent.horizontalCenter
            }

            // The existing game board Grid, now with a matching background
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: boardGrid.height + 20 // Adjust for padding
                color: "#1e242b" // A darker shade for the board background
                border.color: "#6b7d8d" // A muted border color
                border.width: 2

                Grid {
                    id: boardGrid
                    columns: myGame.columns
                    rows: myGame.rows
                    anchors.centerIn: parent
                    spacing: 2

                    Repeater {
                        model: myGame.rows * myGame.columns
                        delegate: Rectangle {
                            width: 30
                            height: 30
                            border.color: "#6b7d8d" // Muted border
                            border.width: 1
                            color: {
                                var r = Math.floor(index / myGame.columns)
                                var c = index % myGame.columns
                                var state = myGame.cellState(r, c)
                                if (state === 0) return "#2f3640" // empty water
                                else if (state === 1) return "#34495e" // player one
                                else if (state === 2) return "#c0392b" // a hit!
                                else return "#5e6973" // a miss
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    // Get the row and column from the index
                                    var row = Math.floor(index / myGame.columns)
                                    var col = index % myGame.columns
                                    console.log("Clicked square at: " + row + ", " + col)
                                    // myGame.makeGuess(row, col);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
