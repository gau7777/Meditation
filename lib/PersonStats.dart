import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PersonStats extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PersonStatsState();
  }
}

class PersonStatsState extends State<PersonStats> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.av_timer,
                  size: 30.0,
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'TOTAL TIME MEDITATED',
                    style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: <Widget>[
                  Text('3',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0)),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'MINUTES',
                      style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.headset,
                  size: 30.0,
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'SESSIONS COMPLETED',
                    style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: <Widget>[
                  Text('1',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0)),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'SESSION',
                      style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.timer,
                  size: 30.0,
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    'AVERAGE DURATION',
                    style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                children: <Widget>[
                  Text('3',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0)),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'MINUTES',
                      style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('BUDDIES',
                    style: TextStyle(fontSize: 15.0, color: Colors.blueGrey)),
                IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.blueGrey,
                  iconSize: 25.0,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Invite your buddy'),
                            content: Column(
                              children: <Widget>[
                                Form(
                                  key: _formKey,
                                  child: TextFormField(
                                    initialValue: '',
                                    decoration: InputDecoration(
                                      hintText: 'Email Address',
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty ||
                                          !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                              .hasMatch(value)) {
                                        return 'Please fill valid Email';
                                      }
                                      if (RegExp(r'^(?:[1-9]\d*|0)?(?:\.\d+)?$')
                                              .hasMatch(value) ||
                                          value.endsWith(RegExp(
                                                  r'^(?:[1-9]\d*|0)?(?:\.\d+)?$')
                                              .toString())) {
                                        return 'Please fill valid Email';
                                      }
                                    },
                                    onSaved: (String value) {},
                                  ),
                                ),
                                SizedBox(
                                  height: 60.0,
                                  width: double.infinity,
                                  child: RaisedButton(
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(21.0)),
                                      color: Colors.blueGrey,
                                      child: Text(
                                        'INVITE',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0),
                                      ),
                                      onPressed: () {
                                        if (!_formKey.currentState.validate()) {
                                          return;
                                        } else {
                                          _formKey.currentState.save();
                                        }
                                      }),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                )
              ],
            ),
          )
        ]));
  }
}
