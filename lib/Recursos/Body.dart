import 'package:flutter/material.dart';




class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return Column(
      children: <Widget>[
        Container(
           height:size.height * 0.3,
           color: Colors.black,

        )



      ]
 
 
      );
    

  }
}

