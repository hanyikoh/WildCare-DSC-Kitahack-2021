import 'package:flutter/material.dart';
import 'package:wildlifecare/routes/Routes.dart';

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
              child: InkWell(
                onTap: () => {
                  Navigator.pushReplacementNamed(context, Routes.list),
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage("assets/images/list.png")),
                    Text('List'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: Card(
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.quiz);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage("assets/images/quiz.png")),
                    Text('Quiz'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
