import 'package:flutter/material.dart';

class Inputbox extends StatelessWidget {
  double boxheight;
  String title;


  Inputbox(this.title, this.boxheight);

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            height: boxheight,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration.collapsed(
                hintText: '$title',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          );
  }
}
