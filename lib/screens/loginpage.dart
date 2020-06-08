import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hosin/widgets/Buttonround.dart';
import 'package:hosin/widgets/Inputfi.dart';

import '../main.dart';
import 'Homescreen.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff1D2025),
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                                size: 18,
                              ),
                              Text(
                                ' BACK',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Startpage()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 28),
                  child: Text(
                    'Log into\nyour acoount',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        decorationThickness: 20,
                        fontSize: 33),
                  ),
                )
              ],
            ),
            color: Color(0xFFEFEFF4),
            height: MediaQuery.of(context).size.height * 0.35,
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.62 - 4.8,
            child: Column(
              children: <Widget>[
                inputfi(
                  text: 'Email',
                ),
                inputfi(
                  text: 'Password',
                ),
                CheckboxListTile(
                    title: Text(
                      '    Remember me',
                      style: TextStyle(color: Colors.black),
                    ),
                    activeColor: Colors.black,
                    checkColor: Colors.white,
                    value: check,
                    onChanged: (bool newvalue) {
                      setState(() {
                        check = newvalue;
                      });
                    }),
                buttonround(
                  nextscreen: Homescreen(),
                  text: 'LOGIN',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
