import 'package:flutter/material.dart';
import 'header.dart'; // import the header widget
import 'footer.dart'; // import the footer widget
import 'mytracker.dart';
import 'income.dart';
import 'recent.dart';
import 'transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String balance = '10.00';

  @override
  void initState() {
    super.initState();
    _fetchBalance();
  }

  void _fetchBalance() async {
    // Make API request to fetch balance
    String balance = '30.00';
    setState(() {
      this.balance = balance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHeader(), // use the header widget
      body: _buildBody(context), // use a method to build the body
      bottomNavigationBar: MyFooter(), // use the footer widget
    );
  }

  Widget _buildBody(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            left: 10,
            right: 10,
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
                    Text('BALANCE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    Text('\$ $balance',
                        style: TextStyle(
                            color: Color.fromARGB(0xff, 0xc6, 0x77, 0x01),
                            fontSize: 30)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 10,
            right: 10,
            child: Container(
              width: double.infinity,
              height: 20,
              child: MyTracker(
                  0.5,
                  [Colors.green, Colors.red, Colors.orange, Colors.pink],
                  [2, 3, 4, 1]),
            ),
          ),
          Positioned(
              top: 150,
              left: 10,
              right: 190,
              child: Container(
                  width: double.infinity,
                  height: 100,
                  child: Income(20.00, Colors.green, 'INCOME'))),
          Positioned(
              top: 150,
              left: 190,
              right: 10,
              child: Container(
                  width: double.infinity,
                  height: 100,
                  child: Income(40.00, Colors.redAccent, 'EXPENSE'))),
          Positioned(
              top: 260,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('RECENT',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          width: 70,
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
                                    builder: (context) => Transaction(),
                                  ),
                                );
                              },
                              child: Text('NEW',
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
          Positioned(
              top: 300,
              left: 10,
              right: 10,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Recent(
                          10.00, Colors.redAccent, 'LUNCH', 'FOOD', Colors.red),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Recent(20.00, Colors.greenAccent, 'GROCERIES',
                          'SHOPPING', Colors.deepPurple),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Recent(20.00, Colors.greenAccent, 'GROCERIES',
                          'SHOPPING', Colors.deepPurple),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: MaterialButton(
          child: Text('Go to Page 2'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Page2(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: MaterialButton(
          child: Text('Go back to Page 1'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
