import QtQuick 2.5
import QtQuick.Controls 2.5 as Controls
import QtQuick.Layouts 1.2
import QtQuick.Window 2.5
import org.kde.kirigami 2.5 as Kirigami
import computeexpression 1.0

Kirigami.Page {

    title: "Basic Calculator"

    header: Column {
        Kirigami.Heading {
          text: sexpression
            width: parent.width
            level: 1
            horizontalAlignment: Text.AlignHCenter
        }

        Kirigami.Heading {
          text: result
          width: parent.width
          level: 1
          horizontalAlignment: Text.AlignHCenter
        }
    }

    GridLayout {
        id: grid
        anchors.fill: parent
        columns: 4

        CalcButton {
            text: "("
            onClicked: {
                expression+="("
                sexpression+="("
            }
        }

        CalcButton {
            text: ")"
            onClicked: {
                expression+=")"
                sexpression+=")"
            }
        }

        CalcButton {
            text: "CE"
            onClicked: {
                expression=expression.substr(0, expression.length-1)
                sexpression=sexpression.substr(0, sexpression.length-1)
            }
        }

        CalcButton {
            text: "C"
            onClicked: {
                expression=""
                sexpression=""
            }
        }

        CalcButton {
            text: "7"
            onClicked: {
                expression+="7"
                sexpression+="7"
            }
        }

        CalcButton {
            text: "8"
            onClicked: {
                expression+="8"
                sexpression+="8"
            }
        }

        CalcButton {
            text: "9"
            onClicked: {
                expression+="9"
                sexpression+="9"
            }
        }

        CalcButton {
            text: "/"
            onClicked: {
                expression+="/"
                sexpression+="÷"
            }
        }

        CalcButton {
            text: "4"
            onClicked: {
                expression+="4"
                sexpression+="4"
            }
        }
        CalcButton {
            text: "5"
            onClicked: {
                expression+="5"
                sexpression+="5"
            }
        }
        CalcButton {
            text: "6"
            onClicked: {
                expression+="6"
                sexpression+="6"
            }
        }

        CalcButton {
            text: "x"
            onClicked: {
                expression+="*"
                sexpression+="x"
            }
        }
        CalcButton {
            text: "1"
            onClicked: {
                expression+="1"
                sexpression+="1"
            }
        }
        CalcButton {
            text: "2"
            onClicked: {
                expression+="2"
                sexpression+="2"
            }
        }

        CalcButton {
            text: "3"
            onClicked: {
                expression+="3"
                sexpression+="3"
            }
        }

        CalcButton {
            text: "-"
            onClicked: {
                expression+="-"
                sexpression+="-"
            }
        }

        CalcButton {
            text: "."
            onClicked: {
                expression+="."
                sexpression+="."
            }
        }
        CalcButton {
            text: "0"
            onClicked: {
                expression+="0"
                sexpression+="0"
            }
        }
        CalcButton {
            text: "="
            onClicked: {
                computer.expression = expression
                result = computer.result
                expression = result
                sexpression = result
            }
        }
        CalcButton {
            text: "+"
            onClicked: {
                expression+="+"
                sexpression+="+"
            }
        }
    }
}
