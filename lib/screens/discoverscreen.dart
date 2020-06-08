import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:like_button/like_button.dart';
import 'package:flutter_boom_menu/flutter_boom_menu.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xff1D2025)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        backgroundColor: Colors.black,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      home: DIS(),
    );
  }
}

class DIS extends StatefulWidget {
  @override
  _DISState createState() => _DISState();
}

class _DISState extends State<DIS> {
  bool scrollVisible = true;
  double buttonSize = 27;
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double weight = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: BoomMenu(
        backgroundColor: Color(0xFFEFEFF4),
        animatedIcon: AnimatedIcons.add_event,
        animatedIconTheme: IconThemeData(size: 22.0, color: Colors.black),
        //child: Icon(Icons.add),
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        scrollVisible: scrollVisible,
        overlayColor: Colors.white,
        overlayOpacity: 0.6,
        children: [
          MenuItem(
            child: Icon(Icons.add, color: Colors.black),
            title: "Add a post",
            titleColor: Colors.white,
            subtitle: "Create your own post to people to find",
            subTitleColor: Colors.white,
            backgroundColor: Colors.green,
            onTap: () => print('SECOND CHILD'),
          ),
          MenuItem(
            child: Icon(Icons.search, color: Colors.black),
            title: "Search",
            titleColor: Colors.white,
            subtitle: "Find a good ideas",
            subTitleColor: Colors.white,
            backgroundColor: Colors.lightBlueAccent,
            onTap: () => print('FIRST CHILD'),
          ),
          MenuItem(
            child: Icon(Icons.language, color: Colors.white),
            title: "View top ideas",
            titleColor: Colors.white,
            subtitle: "see the best ideas around the world",
            subTitleColor: Colors.white,
            backgroundColor: Colors.pinkAccent,
            onTap: () => print('SECOND CHILD'),
          ),
          MenuItem(
            child: Icon(Icons.account_circle, color: Colors.white),
            title: "Your cool ideas",
            titleColor: Colors.white,
            subtitle: "You Can View the states of you ideas ",
            subTitleColor: Colors.white,
            backgroundColor: Colors.blue,
            onTap: () => print('THIRD CHILD'),
          ),
          MenuItem(
            child: Icon(Icons.lightbulb_outline, color: Colors.white),
            title: "Your cooled Ideas",
            titleColor: Colors.white,
            subtitle: "View the ideas that you seen cool",
            subTitleColor: Colors.white,
            backgroundColor: Colors.teal,
            onTap: () => print('FOURTH CHILD'),
          )
        ],
      ),
      backgroundColor: Color(0xfff1f2f8),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            poster(
              weight: weight,
              hight: hight,
              buttonSize: buttonSize,
              name: 'deadbool',
              p: AssetImage('images/p1.png'),
              pro: AssetImage('images/pro1.jpg'),
              disc: 'Outlet with built-in extension cord',
            ),
            poster(
              weight: weight,
              hight: hight,
              buttonSize: buttonSize,
              name: 'damian wayne ',
              p: AssetImage('images/p3.png'),
              pro: AssetImage('images/pro2.jpg'),
              disc: 'A never-wet bench!',
            ),
            poster(
              weight: weight,
              hight: hight,
              buttonSize: buttonSize,
              name: 'Brose ',
              p: AssetImage('images/p2.png'),
              pro: AssetImage('images/pro3.jpg'),
              disc: 'Coffee table with built-in fridge',
            ),
          ],
        ),
      ),
    );
  }
}

class poster extends StatelessWidget {
  const poster({
    Key key,
    @required this.weight,
    @required this.hight,
    @required this.buttonSize,
    this.disc,
    this.name,
    this.pro,
    this.p,
  }) : super(key: key);
  final String disc;

  final String name;
  final AssetImage pro;
  final AssetImage p;
  final double weight;
  final double hight;
  final double buttonSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: weight * 0.95,
          height: hight * 0.52,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                //offset: Offset(0, 1), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(backgroundImage: p),
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 14),
                width: double.infinity,
                child: Text(
                  disc,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                child: Image(
                  image: pro,
                  // height: 100,
                  //  width: 130,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12, top: 5),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    //
                    children: <Widget>[
                      LikeButton(
                        size: buttonSize,
                        circleColor: CircleColor(
                          start: Colors.pinkAccent,
                          end: Colors.pinkAccent[900],
                        ),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.pinkAccent,
                          dotSecondaryColor: Colors.pinkAccent[900],
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.wb_sunny,
                            color: isLiked ? Colors.red : Colors.black,
                            size: buttonSize,
                          );
                        },
                        countBuilder: (int count, bool isLiked, String text) {
                          var color = isLiked ? Colors.red : Colors.black;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              "love",
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                      ),
                      Text(
                        'Cool',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      LikeButton(
                        size: buttonSize,
                        circleColor: CircleColor(
                          start: Colors.amber,
                          end: Colors.amber[900],
                        ),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.amber,
                          dotSecondaryColor: Colors.amber[900],
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.child_friendly,
                            color: isLiked ? Colors.yellow : Colors.black,
                            size: buttonSize,
                          );
                        },
                        countBuilder: (int count, bool isLiked, String text) {
                          var color = isLiked ? Colors.yellow : Colors.black;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              "love",
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                      ),
                      Text(
                        'Nah',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
