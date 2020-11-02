import 'package:flutter/material.dart';
import 'package:responsive_ui/responsive_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyClass(),
    );
  }
}


class MyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ResponsiveUi(builder: (context, deviceInfo) =>ListView(children: [

      Text('title',style: TextStyle(fontSize: deviceInfo.screenWidth*.067)),///titleText
      Text('subtitel',style: TextStyle(fontSize: deviceInfo.screenHeight*.04))///normal

      ,Icon(Icons.error,size: deviceInfo.normalIconSize)/// normal iconSize;
      ,Icon(Icons.error,size: deviceInfo.mediumIconSize,)///mediam iconSize;
      ,Icon(Icons.error,size: deviceInfo.bigIconSize,)///big iconSize;
      ,
      Container(height:deviceInfo.normalButton,child: RaisedButton(onPressed: (){},child: Text("Normal Button",)))///normalbuttotn
      ,SizedBox(height: 15,)
      ,  Container(height:deviceInfo.largeButton,child: RaisedButton(onPressed: (){},child: Text("LargButton",)))///largebutton
      ///
      ,Image(image: AssetImage("assets/images/userImage.png"),height:deviceInfo.largeImage ,),///large image,
      Image(image: AssetImage("assets/images/userImage.png"),height:deviceInfo.mediumImage ,),///medium image,
      Image(image: AssetImage("assets/images/userImage.png"),height:deviceInfo.smallImage  ,),///small image,


      SizedBox(height: 19,)
    ],) ,));
  }
}
