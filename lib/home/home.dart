import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.black,),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),margin: EdgeInsets.all(10),
            child: Icon(Icons.search,color: Colors.black,),
          ),


        ],
      ),body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text("Shop",style: TextStyle(fontSize: 26),),
              Text("Anthropologie",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
            ],
          ),SizedBox(
            height: 20,
          ),
          Row(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
