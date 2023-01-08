import 'package:flutter/material.dart';
import 'inputbox.dart';
import 'dropdown.dart';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Transaction'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(0),
            child: Inputbox('TITLE', 50),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Inputbox('AMOUNT', 50),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Inputbox('TYPE', 50),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Inputbox('RECURRECE', 50),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Inputbox('DATE', 50),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Dropdown(
              items: ['Item 1', 'Item 2', 'Item 3'],
              initialValue: 'Item 1',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Inputbox('NOTE', 50),
          ),
        ],
      )),
    );
  }
}
