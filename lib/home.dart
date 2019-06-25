import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meditation/Advanced.dart';
import 'package:meditation/Basics.dart';
import 'package:meditation/Breathing.dart';

import 'package:meditation/Intermediate.dart';
import 'package:meditation/breathsoundbody.dart';
import 'package:meditation/lovingkindness.dart';
import 'package:meditation/main.dart';
import 'package:meditation/person.dart';

class TabScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TabScreenState();
  }
}

class _TabScreenState extends State<TabScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
    controller.addListener(_handleTabSelection);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    MediaQueryData media = MediaQuery.of(context);
    var size = media.size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 30.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  height: 50.0,
                  child: Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(right: 10.0),
                    alignment: Alignment.bottomLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset('assets/meditation.jpeg'),
                    )),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  alignment: Alignment.topLeft,
                  height: 50.0,
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 170.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Breathing()));
                        },
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/breathing.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Breathing Meditation',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '5 MIN',
                                style: TextStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      BreathSoundBody()));
                        },
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/breathsoundbody.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Breath, Sound & Body Meditation',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('12 MIN')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LovingKindness()));
                        },
                        child: Container(
                          height: 150.0,
                          width: 150.0,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/kindness.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Loving Kindness Meditation',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('9 MIN')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 50.0,
                  child: Text(
                    'My Courses',
                    style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/basic.jpeg',
                      height: 100.0,
                      width: 100.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text('Basics')),
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Basics()));
                        },
                      ),
                    ),
                  ],
                ),
                // ListTile(
                //   dense: true,
                //   leading: Image.asset(
                //     'assets/basic.jpeg',
                //     height: 100.0,
                //     width: 100.0,
                //   ),
                //   title: Text('Basics'),
                //   trailing: IconButton(
                //     icon: Icon(Icons.arrow_right),
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (BuildContext context) => Basics()));
                //     },
                //   ),
                // ),

                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/intermediate.jpeg',
                      height: 100.0,
                      width: 100.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text('Intermediate')),
                    Padding(
                      padding: EdgeInsets.only(left: 35.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Intermediate()));
                        },
                      ),
                    ),
                  ],
                ),
                // ListTile(
                //   leading: Image.asset(
                //     'assets/intermediate.jpeg',
                //     height: 100.0,
                //     width: 100.0,
                //   ),
                //   title: Text('Intermediate'),
                //   trailing: IconButton(
                //     icon: Icon(Icons.arrow_right),
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (BuildContext context) =>
                //                   Intermediate()));
                //     },
                //   ),
                // ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/advanced.jpeg',
                      height: 100.0,
                      width: 100.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text('Advanced')),
                    Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Advanced()));
                        },
                      ),
                    ),
                  ],
                ),
                // ListTile(
                //   leading: Image.asset(
                //     'assets/advanced.jpeg',
                //     height: 100.0,
                //     width: 100.0,
                //   ),
                //   title: Text('Advanced'),
                //   trailing: IconButton(
                //     icon: Icon(Icons.arrow_right),
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (BuildContext context) => Advanced()));
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
