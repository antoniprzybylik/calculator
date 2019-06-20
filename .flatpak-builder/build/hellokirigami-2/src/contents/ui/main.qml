import QtQuick 2.5
import QtQuick.Controls 2.5 as Controls
import QtQuick.Layouts 1.2
import QtQuick.Window 2.5
import org.kde.kirigami 2.5 as Kirigami

Kirigami.ApplicationWindow {

  id: root
  title: "calculator"
  pageStack.initialPage: mainPageComponent

  Component{

    id: headerComponent

    Controls.ComboBox {

      Layout.alignment: Qt.AlignHCenter
      textRole: "key"
      width: Screen.width

      model: ListModel {

        ListElement { key: "basic calculator" }
        ListElement { key: "scientific calculator" }
        ListElement { key: "programmer calculator" }
        ListElement { key: "help" }
        ListElement { key: "about" }

      }

      onActivated: {

        switch (index) {

          case 0:
            showPassiveNotification("0")
          break

          case 1:
            showPassiveNotification("1")
          break

          case 2:
            showPassiveNotification("2")
          break

          case 3:
            showPassiveNotification("3")
          break

          case 4:
            showPassiveNotification("4")
          break

        }

      }

    }

  }

  Component {

    id: mainPageComponent

    Kirigami.Page {

      titleDelegate: headerComponent

      WebEngineView {
       anchors.fill: parent
       url: "https://www.qt.io"
   }

    }

  }

}
