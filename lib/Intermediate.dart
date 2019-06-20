import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Intermediate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntermediateState();
  }
}

class IntermediateState extends State<Intermediate> {
  ScrollController controller;
  bool isVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isVisible = true;
    controller = new ScrollController();
    controller.addListener(() {
      if (controller.position.userScrollDirection == ScrollDirection.reverse) {
        setState(() {
          isVisible = false;
        });
      }
      if (controller.position.userScrollDirection == ScrollDirection.forward) {
        setState(() {
          isVisible = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: null,
      floatingActionButton: Visibility(
        visible: isVisible,
        child: Padding(
          padding: const EdgeInsets.only(top: 130.0),
          child: FloatingActionButton(
            elevation: 10,
            child: BackButton(
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: ListView(
        controller: controller,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 8.0, right: 8.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/goldentemple.jpeg',
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      'Intermediate',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      '5 - 10 MIN',
                      style: TextStyle(color: Colors.black45, fontSize: 17.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      'Live happier and healthier by learning the fundamentals of meditation',
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      'Live happier and healthier by learning the fundamentals of meditation',
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      'Live happier and healthier by learning the fundamentals of meditation',
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      'Live happier and healthier by learning the fundamentals of meditation',
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      'Live happier and healthier by learning the fundamentals of meditation',
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      'Live happier and healthier by learning the fundamentals of meditation',
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      'Live happier and healthier by learning the fundamentals of meditation',
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      'Live happier and healthier by learning the fundamentals of meditation',
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 10.0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0,
                    child: Text(
                      'Live happier and healthier by learning the fundamentals of meditation',
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
