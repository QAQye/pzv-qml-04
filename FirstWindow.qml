import QtQuick
import QtLocation
import QtPositioning
Image{
    signal  issucessclicked(eventPoint xPos,eventPoint yPos)
    // visible: true
    id:myImage
    source: "qrc:/images/start.png"
    anchors.fill: parent
    Component.onCompleted: {
               if (myImage.status === Image.Ready) {
                   console.log("图片加载成功");
               } else if (myImage.status === Image.Error) {
                   console.error("图片加载失败: " + myImage.errorString);
               }

        }
    TapHandler{
        id:tapHandler
        onTapped: (eventPoint)=> {console.log( eventPoint.scenePosition.x)}
    }

}
