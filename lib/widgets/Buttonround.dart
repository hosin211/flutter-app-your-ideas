import 'package:flutter/material.dart';
import 'package:hosin/screens/loginpage.dart';

class buttonround extends StatelessWidget {
  final String text;
  final Widget nextscreen;
  const buttonround({
    Key key,
    this.text,
    this.nextscreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFF171B22),
      ),
      child: FlatButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => nextscreen));
        },
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
