import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HM(),
    );
  }
}

class HM extends StatefulWidget {
  @override
  _HMState createState() => _HMState();
}

class _HMState extends State<HM> {
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double wight = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'MESSAGES',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            chatline(
              hight: hight,
              wight: wight,
              pic: AssetImage('images/p2.png'),
              name: 'bate',
              sub: 'exellent thing for my plan',
            ),
            chatline(
              hight: hight,
              wight: wight,
              pic: AssetImage('images/p4.png'),
              name: 'supes',
              sub: 'good idea',
            ),
            chatline(
              hight: hight,
              wight: wight,
              pic: AssetImage('images/p5.png'),
              name: 'you worse enamy',
              sub: 'you copied my protytape',
            ),
          ],
        ),
      ),
    );
  }
}

class chatline extends StatelessWidget {
  const chatline({
    Key key,
    @required this.hight,
    @required this.wight,
    this.name,
    this.sub,
    this.pic,
  }) : super(key: key);

  final double hight;
  final double wight;
  final String name;
  final String sub;
  final AssetImage pic;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight * 0.11,
      width: wight,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(radius: 23, backgroundImage: pic),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      sub,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }
}
