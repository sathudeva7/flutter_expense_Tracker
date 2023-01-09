import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String? _email;
  String? _password;

  void _submit() {
    if (_formKey.currentState != null) {
      _formKey.currentState?.validate();
      _formKey.currentState?.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Image.asset(
                    'assets/images/imag.png',
                    width: 100,
                    height: 100,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: (value) =>
                        value?.length != 0 ? null : 'Email is required',
                    onSaved: (value) => _email = value,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: (value) =>
                        value?.length != 0 ? null : 'Password is required',
                    obscureText: true,
                    onSaved: (value) => _password = value,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
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
                      child: Text('LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
