import 'package:flutter/material.dart';

class Income extends StatelessWidget {
  double num;
  Color numcolor;
  String title;

  Income(this.num, this.numcolor, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Container(
          width: 20,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text(title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )),
                Text('\$ $num',
                    style: TextStyle(
                        color: numcolor,
                        fontSize: 30)),
              ],
            ),
          ),
        ));
  }
}
