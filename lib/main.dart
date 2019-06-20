import 'package:flutter/material.dart';
import 'home.dart';
import 'person.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(accentColor: Colors.white),
      home: MyApp(),
      debugShowCheckedModeBanner: false));
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white10,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  int curIndex = 0;
  TabScreen p1 = new TabScreen();
  Person p2 = new Person();
  List<Widget> Pages;
  Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Pages = [p1, p2];
    currentPage = p1;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: curIndex,
          onTap: (int index) {
            setState(() {
              curIndex = index;
              currentPage = Pages[index];
            });
          },
          items: [
            new BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.home,
                  color: curIndex == 0 ? Colors.green[400] : Colors.blueGrey,
                ),
                title: new Text('Home',
                    style: new TextStyle(
                        fontSize: 12.0,
                        color: curIndex == 0
                            ? Colors.green[400]
                            : Colors.blueGrey))),
            new BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(
                  Icons.person,
                  color: curIndex == 1 ? Colors.green[400] : Colors.blueGrey,
                ),
                title: new Text('Kaushal',
                    style: new TextStyle(
                        fontSize: 12.0,
                        color: curIndex == 1
                            ? Colors.green[400]
                            : Colors.blueGrey))),
          ]),
      body: currentPage,
    );
  }
}
