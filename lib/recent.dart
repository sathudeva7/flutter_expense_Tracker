import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  double num;
  Color numcolor;
  String title;
  String type;
  Color typecolor;

  Recent(this.num, this.numcolor, this.title, this.type, this.typecolor);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 340,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Container(
          width: 20,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Text(type,
                        style: TextStyle(color: typecolor, fontSize: 10)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('\$ $num',
                        style: TextStyle(color: numcolor, fontSize: 20)),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
