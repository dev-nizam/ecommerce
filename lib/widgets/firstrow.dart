import 'package:flutter/material.dart';

class FirstRow extends StatefulWidget {
   FirstRow({Key? key, required this.buttonText2 ,this.IsSelected2 = false}) : super(key: key);
  bool IsSelected2 = false;
  final String buttonText2;
  @override
  State<FirstRow> createState() => _FirstRowState();
}

class _FirstRowState extends State<FirstRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.buttonText2,style:TextStyle(fontSize: 18,
          color:widget.IsSelected2?Colors.black:Colors.grey
        ) ,),
        SizedBox(
          height: 5,
        ),
        if(widget.IsSelected2)
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle
          ),
        ),
      ],
    );
  }
}
