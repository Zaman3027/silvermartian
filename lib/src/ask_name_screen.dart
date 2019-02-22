import 'package:flutter/material.dart';
import './story_screen.dart';
import './storyRouteGenerator.dart';

class AskNameScreen extends StatefulWidget {

  @override
  AskNameScreenState createState() {
    return new AskNameScreenState();
  }
}

class AskNameScreenState extends State<AskNameScreen> {
  TextEditingController _editingController;
  @override
  void initState(){
    super.initState();
    _editingController =TextEditingController();
  }

  @override
  void dispose(){
    super.dispose();
    _editingController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/main_title.png")),
      ),
      child: Column(
        children: <Widget>[
          Spacer(),
          TextField(
            onChanged: (text){
              print(text);
            },
            controller: _editingController,
            decoration: InputDecoration(
            filled:true,
            fillColor: Colors.white,
            hintText: "ENTER YOUR NAME",
            ),
            ),
            RaisedButton(
              onPressed: (){
                print(_editingController.text);
                Navigator.push(context, getRouteByStoryStage(StoryStage.page0, _editingController.text)); 
              },
                            child: Text("START YOUR ADVENTURE"),
                          )
                      ],
                    ),
                  );
                }

}