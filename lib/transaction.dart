import 'package:flutter/material.dart';
import 'inputbox.dart';
import 'dropdown.dart';
import 'datepicker.dart';
import 'login.dart';

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
            child: Inputbox('TITLE', 60),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Inputbox('AMOUNT', 60),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Inputbox('TYPE', 60),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Inputbox('RECURRECE', 60),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: DateTimePicker(),
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
            child: Inputbox('NOTE', 60),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  width: 100,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Text('CREATE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ))),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
