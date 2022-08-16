import 'package:flutter/material.dart';

class Flatbutton2 extends StatefulWidget {
  Flatbutton2({Key? key, required this.buttonText1, this.IsSelected1 = false})
      : super(key: key);
  bool IsSelected1 = false;
  final String buttonText1;

  @override
  State<Flatbutton2> createState() => _Flatbutton2State();
}

class _Flatbutton2State extends State<Flatbutton2> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          print("button pressed");
        },
        child: Text(
          widget.buttonText1,
          style: TextStyle(
            color: widget.IsSelected1 ? Colors.white : Colors.black,
            fontSize: 18,
          ),
        ),
        shape: StadiumBorder(),
        color: widget.IsSelected1 ? Colors.pink[100] : Colors.grey[300]);
  }
}
