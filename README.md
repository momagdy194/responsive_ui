# responsive_ui

A new Flutter package for android ,ios which help users toy make the ui ,ore responsive.



## Screens
<image src="1.png" height="300em" />
<image src="2.png" height="300em" />
<image src="3.png" height="300em" />
<image src="4.png" height="300em" />
<image src="5.png" height="300em" />
<image src="6.png" height="300em" />
<image src="7.png" height="300em" />




## Uses
["Example"](https://github.com/momagdy194/responsive_ui/blob/main/example/example.dart)








*add the debendency to your  file.

```yaml
  dependencies:
    flutter:
        sdk:
  responsive_ui:
```
```dart



/// i have make thats class you will wrap your widget with "ResponsiveUi" class which he cant tack parameter 
///  it is type is widget and make inistance form Defice info its name is size 
///  it will give me type of widget size 
class MyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    
    
    ResponsiveUi(builder: (context, size)=> /// that is my class i wrap my widget with it 
    
    ListView(children: [
/// and you can controle in your widget with replace the 

and you can replace 
      Text('title',style: TextStyle(fontSize: size.screenWidth)),
      Text('title',style: TextStyle(fontSize: size.screenHeight)),
      Text('title',style: TextStyle(fontSize: size.screenWidth*.067)),///titleText
      Text('subTitle',style: TextStyle(fontSize: size.screenHeight*.04))///normal

      ,Icon(Icons.error,size: size.normalIconSize)/// normal iconSize;
      ,Icon(Icons.error,size: size.mediumIconSize,)///mediam iconSize;
      ,Icon(Icons.error,size: size.bigIconSize,)///big iconSize;
      ,
      Container(height:size.normalButton,child: RaisedButton(onPressed: (){},child: Text("Normal Button",)))///normalbuttotn
      ,SizedBox(height: 15,)
      ,  Container(height:size.largeButton,child: RaisedButton(onPressed: (){},child: Text("LargButton",)))///largebutton
      ///
      ,Image(image: AssetImage("assets/images/userImage.png"),height:size.largeImage ,),///large image,
      Image(image: AssetImage("assets/images/userImage.png"),height:size.mediumImage ,),///medium image,
      Image(image: AssetImage("assets/images/userImage.png"),height:size.smallImage  ,),///small image,


      SizedBox(height: 19,)
    ],) ,));
  }
}
```

### How To Use It







Responsive Framework adapts your UI to different screen sizes automatically. Create your UI once and have it display pixel perfect on mobile, tablet, and desktop!

[responsive_ui](https://github.com/momagdy194/responsive_ui),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://github.com/momagdy194/responsive_ui/blob/main/README.md), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
