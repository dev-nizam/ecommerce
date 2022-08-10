import 'package:flutter/material.dart';

class Flatbutton1 extends StatelessWidget {
  Flatbutton1({Key? key}) : super(key: key);
  String buttonText;
  @override
  Widget build(BuildContext context) {

    return  FlatButton(onPressed: (){
      print("button pressed");
    }, child: Text(buttonText,style: TextStyle(fontSize: 18),),shape: StadiumBorder(),
      color: Colors.pink[100],);
  }
}
