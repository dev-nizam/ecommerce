import 'package:flutter/material.dart';

class SecondRow extends StatefulWidget {
   SecondRow({Key? key, required this.Image, required this.prodectName, required this.Price}) : super(key: key);
final String Image;
final String prodectName;
 final  String Price;
  @override
  State<SecondRow> createState() => _SecondRowState();
}

class _SecondRowState extends State<SecondRow> {
  @override
  Widget build(BuildContext context) {

 
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height:220,
            width: 160,


            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(widget.Image,fit: BoxFit.fill,)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(widget.prodectName,style: TextStyle(fontSize: 16)),
          Text(widget.Price,style: TextStyle(fontSize: 20),)

        ],
      ),
    );
  }
}
