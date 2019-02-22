import 'package:flutter/material.dart';
import '../res/strings.dart';

MaterialPageRoute storyScreenRoute() => MaterialPageRoute(
    builder: (_) => StoryScreen(
          assetImagePath: "assets/images/page0.png",
          button1Function: () {
            print('1');
          },
          button1Text: "Button 1",
          button2Text: "Button 2",
          button2Function: () {
            print("button 2");
          },
          storyText: page0("Mahafuz"),
        ));

class StoryScreen extends StatelessWidget {
  final String button1Text;
  final String button2Text;
  final Function button1Function;
  final Function button2Function;
  final String storyText;
  final String assetImagePath;

  const StoryScreen(
      {Key key,
      this.button1Text,
      this.button2Text,
      this.button1Function,
      this.button2Function,
      this.storyText,
      this.assetImagePath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Silver Martian"),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: <Widget>[
            Image.asset(assetImagePath),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.yellowAccent)
              ),
              margin: EdgeInsets.all(8),
              child: Text(
                storyText,
                style: TextStyle(fontSize: 16,color: Colors.white,letterSpacing: 2,fontWeight: FontWeight.bold),
                
              ),
            )
            ,
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              FlatButton(
                color: Colors.blue,
              onPressed: button1Function,
              child: Text(button1Text,style: TextStyle(color: Colors.white),),
            ),
            FlatButton(
              color: Colors.green,
              onPressed: button2Function,
              child: Text(button2Text,style: TextStyle(color: Colors.white),),
            )
            ],)
          ],
        ),
      ),
    );
  }
}
