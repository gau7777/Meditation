import 'package:flutter/material.dart';
import 'package:meditation/Advanced.dart';
import 'package:meditation/Basics.dart';
import 'package:meditation/Breathing.dart';
import 'package:meditation/Intermediate.dart';
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
                      child: Image.asset('assets/food.jpg'),
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
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
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
                                        image: AssetImage('assets/food.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Basics',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                '3 - 5 MIN',
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
                        onTap: () {},
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
                                            'assets/goldentemple.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Intermediate',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('5 - 10 MIN')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      InkWell(
                        onTap: () {},
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
                                        image: AssetImage('assets/happ.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Advanced',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('10 - 15 MIN')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      InkWell(
                        onTap: () {},
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
                                            'assets/myprofilelogo.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Breathing',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('5 - 15 MIN')
                            ],
                          ),
                        ),
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
                      'assets/food.jpg',
                      height: 100.0,
                      width: 100.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text('Basics')),
                    Padding(
                      padding: const EdgeInsets.only(left: 150.0),
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
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/goldentemple.jpeg',
                      height: 100.0,
                      width: 100.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text('Intermediate')),
                    Padding(
                      padding: EdgeInsets.only(left: 113.0),
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
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/happ.jpeg',
                      height: 100.0,
                      width: 100.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text('Advanced')),
                    Padding(
                      padding: EdgeInsets.only(left: 130.0),
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
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/myprofilelogo.jpg',
                      height: 100.0,
                      width: 100.0,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text('Breathing')),
                    Padding(
                      padding: EdgeInsets.only(left: 130.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Breathing()));
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
