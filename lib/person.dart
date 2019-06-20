import 'package:flutter/material.dart';
import 'package:meditation/PersonJourney.dart';
import 'package:meditation/PersonSettings.dart';
import 'package:meditation/PersonStats.dart';
import 'package:flutter/rendering.dart';

class Person extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PersonState();
  }
}

class _PersonState extends State<Person> with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 160.0,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 50.0,
                      child: ClipOval(
                        child: Image.asset('assets/clock.png'),
                      ),
                    ),
                    title:
                        Text('Kaushal Kumar', style: TextStyle(fontSize: 20.0)),
                    trailing: IconButton(
                      icon: Icon(Icons.settings),
                      iconSize: 27.0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    PersonSettings()));
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TabBar(
                  labelColor: Colors.blueGrey,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blueGrey,
                  controller: controller,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'My Stats',
                        style: TextStyle(
                            color: (controller.index == 0)
                                ? Colors.blueGrey
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'My Journey',
                        style: TextStyle(
                            color: (controller.index == 1)
                                ? Colors.blueGrey
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: <Widget>[PersonStats(), PersonJourney()],
            ),
          ),
        ],
      ),
    );
  }
}
