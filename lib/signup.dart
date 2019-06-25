import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:meditation/main.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:meditation/policy.dart';
import 'package:meditation/tc.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
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
            'Sign Up',
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
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        labelText: 'First Name',
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
                                .hasMatch(value)) {
                          return 'Please fill valid First Name';
                        }
                      },
                      onSaved: (String value) {},
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        labelText: 'Last Name',
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
                                .hasMatch(value)) {
                          return 'Please fill valid Last Name';
                        }
                      },
                      onSaved: (String value) {},
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
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
                      height: 5.0,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('By continuing, you agree to our ',
                                style: TextStyle(color: Colors.blueGrey)),
                            GestureDetector(
                              child: Text(
                                'Terms & ',
                                style: TextStyle(color: Colors.orange),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            TermsConditions()));
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              child: Text(
                                'Conditions ',
                                style: TextStyle(color: Colors.orange),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            TermsConditions()));
                              },
                            ),
                            Text('and ',
                                style: TextStyle(color: Colors.blueGrey)),
                            GestureDetector(
                              child: Text(
                                'Privacy Policy',
                                style: TextStyle(color: Colors.orange),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Policy()));
                              },
                            )
                          ],
                        )
                      ],
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
                          'SIGN UP',
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
