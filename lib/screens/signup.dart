import 'package:flutter/material.dart';
import 'package:hosin/screens/Homescreen.dart';
import 'package:hosin/widgets/Buttonround.dart';
import 'package:hosin/widgets/Inputfi.dart';

import '../main.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: body(),
      )),
    );
  }
}

class body extends StatefulWidget {
  @override
  _bodyState createState() => _bodyState();
}

class _bodyState extends State<body> {
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
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 28),
                  child: Text(
                    'Create your \naccount',
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
                  text: 'Name',
                ),
                inputfi(
                  text: 'Email',
                ),
                inputfi(
                  text: 'Password',
                ),
                CheckboxListTile(
                    title: Text(
                      '    You agree the our privacy policy',
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
                  text: 'Signup',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
