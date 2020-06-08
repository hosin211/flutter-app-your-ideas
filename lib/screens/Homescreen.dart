import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hosin/screens/settingscreen.dart';

import 'discoverscreen.dart';
import 'messagesscreen.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff0F1319),
    ));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Colors.white,
          primarySwatch: Colors.red,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          backgroundColor: Colors.white,
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        home: body());
  }
}

class body extends StatefulWidget {
  @override
  _bodyState createState() => _bodyState();
}

class _bodyState extends State<body> {
  Color back = Colors.white;
  Color icons = Colors.black;
  Color front = Color(0xFFEFEFF4);
  int current = 0;
  List<StatefulWidget> lst = [
    Discover(),
    Message(),
    settingscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0F1319),
        bottomNavigationBar: CurvedNavigationBar(
          // buttonBackgroundColor: Colors.black,
          height: 40,
          animationDuration: Duration(milliseconds: 500),
          color: back,
          backgroundColor: front,
          items: <Widget>[
            Image(
                height: 18,
                width: 18,
                color: icons,
                image: AssetImage("images/home.png")),
            Image(
                height: 18,
                width: 18,
                color: icons,
                image: AssetImage("images/message.png")),
            Image(
                height: 18,
                width: 18,
                color: icons,
                image: AssetImage("images/menu.png")),
          ],
          onTap: (index) {
            if (index == 2) {}
            setState(() {
              current = index;
            });
            //Handle button tap
          },
        ),
        body: lst[current],
      ),
    );
  }
}
