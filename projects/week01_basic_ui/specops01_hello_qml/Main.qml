import QtQuick 6.0
import QtQuick.Controls 6.0

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Hello QML World")

    NumberAnimation {
        id: fontSizeAnime
        target: helloText
        properties: "font.pointSize"
        from: 12
        to: 48
        duration: 1000
        easing.type: Easing.InOutQuad

        onStopped: {
            if (fontSizeAnime.to === 48) {
                fontSizeAnime.to = 12
                fontSizeAnime.from = 48
            } else {
                fontSizeAnime.to = 48
                fontSizeAnime.from = 12
            }
        }
    }

    Button {
        id: textAnimeButton
        font.pointSize: 20
        text: "點我看文字縮放"

        background : Rectangle {
            color: "#7ee7ff"
            radius: 8
            border.color: "#fffb1e"
        }

        onClicked: {
            fontSizeAnime.start()
        }
    }

    Rectangle {
        id: textContainer
        property string textHelloQml: "哈囉，QML！"
        anchors.centerIn: parent
        width: parent.width
        height: helloText.implicitHeight + 16
        color: "black"

        Text {
            id: helloText
            anchors.centerIn: parent
            color: "#f9d6d6"
            font.pointSize: 12
            font.bold: true
            text: textContainer.textHelloQml
        }
    }
}
