import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:hosin/screens/loginpage.dart';
import 'package:hosin/screens/signup.dart';
import 'package:hosin/widgets/Buttonround.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff0F1319),
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Startpage(),
    );
  }
}

class Startpage extends StatefulWidget {
  @override
  _StartpageState createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: FlatButton(
                      child: Row(
                        children: <Widget>[
                          Text(
                            'SIGN UP ',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 18,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 135),
              child: Text(
                'Welecome!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Text(
                'To the Ideal place for your Ideas',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 4),
              child: Divider(
                thickness: 2,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            buttonround(
              text: 'Login with your email',
              nextscreen: loginpage(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF285296),
              ),
              child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Image(
                          color: Colors.white,
                          width: 30,
                          height: 30,
                          image: AssetImage("images/facebook.png")),
                      Text(
                        "   Login with your Facebook",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
