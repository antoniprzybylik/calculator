import QtQuick 2.5
import QtQuick.Controls 2.5 as Controls
import QtQuick.Layouts 1.2
import QtQuick.Window 2.5
import org.kde.kirigami 2.5 as Kirigami
import computeexpression 1.0

Kirigami.ApplicationWindow {

  property var actualPage: basicCalculator
  property var headerText: "basic calculator"

  property var sexpression: ""

  property var expression: ""
  property var result: ""

  id: root
  title: "calculator"
  pageStack.initialPage: actualPage

  ComputeExpression {

    id: computer

  }

  globalDrawer: Kirigami.GlobalDrawer {

    actions: [

      Kirigami.Action {

        text: "basic calculator"

        onTriggered: {

          headerText = "basic calculator"
          actualPage = basicCalculator

        }

      },

      Kirigami.Action {

        text: "scientific calculator"

        enabled: false

        onTriggered: {

          headerText = "scientific calculator"
          actualPage = scientificCalculator

        }

      },

      Kirigami.Action {

        text: "programmer calculator"

        enabled: false

        onTriggered: {

          headerText = "programmer calculator"
          actualPage = programmerCalculator

        }

      },

      Kirigami.Action {

           text: "help"

           onTriggered: {

             Qt.openUrlExternally("https://forum.kde.org/faq.php?sid=7f87f2d5f7ce46385dee36134970b351")

           }

      },

      Kirigami.Action {

           text: "about"

           onTriggered: {

             headerText = "about"
             actualPage = aboutPage

           }

      }

    ]

  }

  Component {

    id: headerComponent

    Text{

      text: headerText
      color: Kirigami.Theme.textColor
      anchors.centerIn: parent
      horizontalAlignment: Text.AlignHCenter

    }

  }

  Component {

    id: basicCalculator

    Kirigami.Page {

      titleDelegate: headerComponent
      background: Rectangle {

        color: Kirigami.Theme.backgroundColor

      }

      Rectangle {

        color: Kirigami.Theme.highlightedTextColor

        x: 0
        width: parent.width

        y: 0
        height: parent.height*0.07916

        Text {

          text: sexpression
          font.pixelSize: parent.height*0.75
          anchors.centerIn: parent
          color: Kirigami.Theme.textColor

        }

      }

      Rectangle {

        color: Kirigami.Theme.highlightedTextColor

        x: 0
        width: parent.width

        y: parent.height*0.07916
        height: parent.height*0.07916

        Text {

          text: result
          font.pixelSize: parent.height*0.75
          anchors.centerIn: parent
          color: Kirigami.Theme.textColor

        }

      }

      Controls.Button {

        text: "("
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: 0
        width: parent.width*0.2425

        y: parent.height*0.1683
        height: parent.height*0.1583

        onClicked: {

          expression+="("
          sexpression+="("

        }

      }

      Controls.Button {

        text: ")"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.2525
        width: parent.width*0.2425

        y: parent.height*0.1683
        height: parent.height*0.1583

        onClicked: {

          expression+=")"
          sexpression+=")"

        }

      }

      Controls.Button {

        text: "CE"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.505
        width: parent.width*0.2425

        y: parent.height*0.1683
        height: parent.height*0.1583

        onClicked: {

          expression=expression.substr(0, expression.length-1)
          sexpression=sexpression.substr(0, sexpression.length-1)

        }

      }

      Controls.Button {

        text: "C"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.7575
        width: parent.width*0.2425

        y: parent.height*0.1683
        height: parent.height*0.1583

        onClicked: {

          expression=""
          sexpression=""

        }

      }

      Controls.Button {

        text: "1"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: 0
        width: parent.width*0.2425

        y: parent.height*0.3366
        height: parent.height*0.1583

        onClicked: {

          expression+="1"
          sexpression+="1"

        }

      }

      Controls.Button {

        text: "2"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.2525
        width: parent.width*0.2425

        y: parent.height*0.3366
        height: parent.height*0.1583

        onClicked: {

          expression+="2"
          sexpression+="2"

        }

      }

      Controls.Button {

        text: "3"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.505
        width: parent.width*0.2425

        y: parent.height*0.3366
        height: parent.height*0.1583

        onClicked: {

          expression+="3"
          sexpression+="3"

        }

      }

      Controls.Button {

        text: "+"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.7575
        width: parent.width*0.2425

        y: parent.height*0.3366
        height: parent.height*0.1583

        onClicked: {

          expression+="+"
          sexpression+="+"

        }

      }

      Controls.Button {

        text: "4"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: 0
        width: parent.width*0.2425

        y: parent.height*0.505
        height: parent.height*0.1583

        onClicked: {

          expression+="4"
          sexpression+="4"

        }

      }

      Controls.Button {

        text: "5"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.2525
        width: parent.width*0.2425

        y: parent.height*0.505
        height: parent.height*0.1583

        onClicked: {

          expression+="5"
          sexpression+="5"

        }

      }

      Controls.Button {

        text: "6"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.505
        width: parent.width*0.2425

        y: parent.height*0.505
        height: parent.height*0.1583

        onClicked: {

          expression+="6"
          sexpression+="6"

        }

      }

      Controls.Button {

        text: "-"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.7575
        width: parent.width*0.2425

        y: parent.height*0.505
        height: parent.height*0.1583

        onClicked: {

          expression+="-"
          sexpression+="-"

        }

      }

      Controls.Button {

        text: "7"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: 0
        width: parent.width*0.2425

        y: parent.height*0.6733
        height: parent.height*0.1583

        onClicked: {

          expression+="7"
          sexpression+="7"

        }

      }

      Controls.Button {

        text: "8"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.2525
        width: parent.width*0.2425

        y: parent.height*0.6733
        height: parent.height*0.1583

        onClicked: {

          expression+="8"
          sexpression+="8"

        }

      }

      Controls.Button {

        text: "9"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.505
        width: parent.width*0.2425

        y: parent.height*0.6733
        height: parent.height*0.1583

        onClicked: {

          expression+="9"
          sexpression+="9"

        }

      }

      Controls.Button {

        text: "×"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.7575
        width: parent.width*0.2425

        y: parent.height*0.6733
        height: parent.height*0.1583

        onClicked: {

          expression+="*"
          sexpression+="×"

        }

      }

      Controls.Button {

        text: "0"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: 0
        width: parent.width*0.2425

        y: parent.height*0.8416
        height: parent.height*0.1583

        onClicked: {

          expression+="0"
          sexpression+="0"

        }

      }

      Controls.Button {

        text: "."
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.2525
        width: parent.width*0.2425

        y: parent.height*0.8416
        height: parent.height*0.1583

        onClicked: {

          expression+="."
          sexpression+="."

        }

      }

      Controls.Button {

        text: "="
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.505
        width: parent.width*0.2425

        y: parent.height*0.8416
        height: parent.height*0.1583

        onClicked: {

          computer.expression = expression
          result = computer.result
          expression = result
          sexpression = result

        }

      }

      Controls.Button {

        text: "÷"
        font.pixelSize: height*0.75

        background: Rectangle {

          color: "#c8c8c8"

        }

        x: parent.width*0.7575
        width: parent.width*0.2425

        y: parent.height*0.8416
        height: parent.height*0.1583

        onClicked: {

          expression+="/"
          sexpression+="÷"

        }

      }

    }

  }

  Component {

    id: scientificCalculator

    Kirigami.Page {

      titleDelegate: headerComponent

      Text {

        text:  "scientific calculator"
        anchors.centerIn: parent

      }

    }

  }

  Component {

    id: programmerCalculator

    Kirigami.Page {

      titleDelegate: headerComponent

      Text {

        text:  "programmer calculator"
        anchors.centerIn: parent

      }

    }

  }

  Component {

    id: aboutPage

    Kirigami.Page {

      titleDelegate: headerComponent

      Text {

        text: "Plasma Mobile website: <a href=\"https://www.plasma-mobile.org/\">https://www.plasma-mobile.org/</a> <br> <br>
               Plasma Mobile FAQ: <a href=\"https://www.plasma-mobile.org/faq/\">https://www.plasma-mobile.org/faq/</a> <br> <br>
               Plasma Mobile developer docs: <a href=\"https://docs.plasma-mobile.org/\">https://docs.plasma-mobile.org/</a> <br> <br>
               Calculator source: <a href=\"https://github.com/antoniprzybylik/calculator\">https://github.com/antoniprzybylik/calculator</a>"

        onLinkActivated: Qt.openUrlExternally(link)
        color: Kirigami.Theme.textColor
        anchors.centerIn: parent

      }

    }

  }

}
