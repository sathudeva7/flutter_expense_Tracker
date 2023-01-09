import 'package:flutter/material.dart';

class Inputbox extends StatefulWidget {
  double boxheight;
  String title;

  Inputbox(this.title, this.boxheight);

  @override
  _InputboxState createState() => _InputboxState();
}

class _InputboxState extends State<Inputbox> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _saveValue() {
    // Save the value entered by the user
    String value = _controller.text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.only(left:10.0),
      height: widget.boxheight,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
            labelText: '${widget.title}', labelStyle: TextStyle(color: Colors.white)
        ),
        validator: (value) => value?.length != 0 ? null : '${widget.title} is required',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
