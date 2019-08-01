import QtQuick 2.5
import QtQuick.Controls 2.5 as Controls
import QtQuick.Layouts 1.2
import QtQuick.Window 2.5
import org.kde.kirigami 2.5 as Kirigami
import computeexpression 1.0

Kirigami.ApplicationWindow {

  property var sexpression: ""

  property var expression: ""
  property var result: ""

  id: root
  title: "calculator"
  pageStack.initialPage: Qt.resolvedUrl("BasicCalculatorPage.qml")

  ComputeExpression {

    id: computer

  }

  globalDrawer: Kirigami.GlobalDrawer {

    actions: [

      Kirigami.Action {

        text: "basic calculator"

        onTriggered: pageStack.initialPage = Qt.resolvedUrl("BasicCalculatorPage.qml")

      },

      Kirigami.Action {

        text: "scientific calculator"

        enabled: false

        onTriggered: pageStack.initialPage = Qt.resolvedUrl("ScientificCalculatorPage.qml")
      },

      Kirigami.Action {

        text: "programmer calculator"

        enabled: false

        onTriggered: pageStack.initialPage = Qt.resolvedUrl("ProgrammerCalculatorPage.qml")
      },

      Kirigami.Action {

           text: "help"

           onTriggered: Qt.openUrlExternally("https://forum.kde.org/faq.php?sid=7f87f2d5f7ce46385dee36134970b351")
      },

      Kirigami.Action {

           text: "about"

           onTriggered: pageStack.initialPage = aboutPage
      }

    ]

  }

  Component {

    id: aboutPage

    Kirigami.Page {

      title: "About"

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
