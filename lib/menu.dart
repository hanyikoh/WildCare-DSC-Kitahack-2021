import 'package:flutter/material.dart';
import 'quizpage.dart';
import 'home.dart';

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(image: AssetImage("images/list.png")),
                    Text('List'),
                  ],
                ),
                onTap: ()=>{
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder:(context) => homepage(),
                ))
                },
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
                  Image(image: AssetImage("images/quiz.png")),
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