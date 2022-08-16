import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 240,

      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset("asset/images/homedecor/download (2).jpg")),
          Padding(padding: EdgeInsets.all(20)),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bottil"),
              Text("20 cm",style: TextStyle(fontSize: 18),),
              Spacer(),
              Text("\$28",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            ],
          )

        ],
      ),

    );
  }
}
