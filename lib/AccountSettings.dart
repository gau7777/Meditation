import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import './EditAccountSettings/firstname.dart';
import './EditAccountSettings/lastname.dart';
import './EditAccountSettings/email.dart';
import './EditAccountSettings/password.dart';

class AccountSettings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AccountSettingsState();
  }
}

class AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Account Settings',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          ListTile(
            leading: null,
            title: Text(
              'First Name',
              style: TextStyle(fontSize: 12.0),
            ),
            subtitle: Text(
              'Kaushal',
              style: TextStyle(fontSize: 18.0),
            ),
            trailing: FlatButton(
              child: Text(
                'EDIT',
                style: TextStyle(color: Colors.orange),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => EditFirstName()));
              },
            ),
          ),
          ListTile(
            leading: null,
            title: Text(
              'Last Name',
              style: TextStyle(fontSize: 12.0),
            ),
            subtitle: Text(
              'Kumar',
              style: TextStyle(fontSize: 18.0),
            ),
            trailing: FlatButton(
              child: Text(
                'EDIT',
                style: TextStyle(color: Colors.orange),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => EditLastName()));
              },
            ),
          ),
          ListTile(
            leading: null,
            title: Text(
              'Email Address',
              style: TextStyle(fontSize: 12.0),
            ),
            subtitle: Text(
              'kaushal.deligence@gmail.com',
              style: TextStyle(fontSize: 18.0),
            ),
            trailing: FlatButton(
              child: Text(
                'EDIT',
                style: TextStyle(color: Colors.orange),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => EditEmail()));
              },
            ),
          ),
          ListTile(
            leading: null,
            title: Text(
              'Password',
              style: TextStyle(fontSize: 12.0),
            ),
            subtitle: Text(
              '........',
              style: TextStyle(fontSize: 18.0),
            ),
            trailing: FlatButton(
              child: Text(
                'EDIT',
                style: TextStyle(color: Colors.orange),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => EditPassword()));
              },
            ),
          )
        ],
      ),
    );
  }
}
