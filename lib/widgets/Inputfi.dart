import 'package:flutter/material.dart';

class inputfi extends StatelessWidget {
  final String text;
  const inputfi({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 30, right: 30),
      child: TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w100,
            color: Colors.black,
            fontSize: 22,
          ),
          contentPadding: EdgeInsets.all(3),
          isDense: true,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
