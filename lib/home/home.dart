import 'package:ecommerce/widgets/bottomcontainer.dart';
import 'package:ecommerce/widgets/firstrow.dart';
import 'package:ecommerce/widgets/flatbutton.dart';
import 'package:ecommerce/widgets/secondRow.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            margin: EdgeInsets.all(10),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(fontSize: 26),
                  ),
                  Text(
                    "Anthropologie",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flatbutton2(
                    buttonText1: "home Decor",
                    IsSelected1: true,
                  ),
                  Flatbutton2(buttonText1: "Bath&Body"),
                  Flatbutton2(buttonText1: "Beauty"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, spreadRadius: 1, blurRadius: 20)
                      ]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FirstRow(buttonText2: 'Candels',IsSelected2: true,),
                          FirstRow(buttonText2: 'vases',),
                          FirstRow(buttonText2: 'bins',),
                          FirstRow(buttonText2: 'floral',),
                          FirstRow(buttonText2: 'decor',),
                        ],
                      ),SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            SecondRow(Price: '\$24', Image: 'asset/images/homedecor/download (1).jpg', prodectName: 'botil',),
                            SecondRow(Price: '\$60', Image: 'asset/images/homedecor/download (2).jpg', prodectName: 'botil',),
                            SecondRow(Price: '\$50', Image: 'asset/images/homedecor/download (3).jpg', prodectName: 'botil',),
                            SecondRow(Price: '\$10', Image: 'asset/images/homedecor/images.jpg', prodectName: 'botil',),
                            SecondRow(Price: '\$100', Image: 'asset/images/homedecor/images (1).jpg', prodectName: 'botil',),

                          ],
                        ),
                      ),
                      Container(
                        height: 5,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))
                        ),

                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 5,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Text("Holiday Special",style: TextStyle(fontSize: 24),),
                            Spacer(),
                            Text("View All",style: TextStyle(fontSize: 20,color: Colors.grey),),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                           BottomContainer(),
                           BottomContainer(),
                           BottomContainer(),
                           BottomContainer(),
                           BottomContainer(),
                           BottomContainer(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
