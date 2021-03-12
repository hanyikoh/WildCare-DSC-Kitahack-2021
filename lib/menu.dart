import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(image: AssetImage("assets/list.png")),
                  Text('List'),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(image: AssetImage("assets/quiz.png")),
                  Text('Quiz'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
