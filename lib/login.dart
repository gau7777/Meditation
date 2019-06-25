import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meditation/main.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:meditation/policy.dart';
import 'package:meditation/resetpassword.dart';
import 'package:meditation/tc.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  InputBorder border;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            'Log In',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 14.0, right: 14.0, top: 10.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        labelText: 'Email Address',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueGrey,
                                style: BorderStyle.solid,
                                width: 2.0)),
                      ),
                      validator: (String value) {
                        if (value.isEmpty ||
                            RegExp(r'^(?:[1-9]\d*|0)?(?:\.\d+)?$')
                                .hasMatch(value) ||
                            !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                .hasMatch(value)) {
                          return 'Please fill valid Email';
                        }
                      },
                      onSaved: (String value) {},
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password (8+ characters)',
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueGrey,
                                style: BorderStyle.solid,
                                width: 2.0)),
                      ),
                      validator: (String value) {
                        if (value.isEmpty || value.length < 8) {
                          return 'Please fill valid Password';
                        }
                      },
                      onSaved: (String value) {},
                    ),
                    SizedBox(
                      height: 14.0,
                    ),
                    GestureDetector(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ResetPass()));
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 70.0,
                      width: double.infinity,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        color: Colors.blueGrey,
                        child: Text(
                          'LOG IN',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                        onPressed: () {
                          if (!_formKey.currentState.validate()) {
                            return;
                          } else {
                            _formKey.currentState.save();
                          }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => MyApp()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
