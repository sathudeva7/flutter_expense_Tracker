import 'package:flutter/material.dart';

class MyTracker extends StatelessWidget {
  double value;
  List<Color> colors;
  List<int> num;

  MyTracker(this.value, this.colors, this.num);

  @override
  Widget build(BuildContext context) {
    value = value.clamp(0.0, 1.0);
    return Container(
        width: 100,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: List.generate(colors.length, (index) {
            return Expanded(
              flex: num[index],
              child: Container(
                decoration: BoxDecoration(
                  color: colors[index],
                  borderRadius: index == 0 ? BorderRadius.only( topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)) : index == colors.length-1 ? BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)) : BorderRadius.all(Radius.circular(0)),
                ),
              ),
            );
          }),
        ));
  }
}
