import 'package:flutter/material.dart';

class Leaderboard extends StatefulWidget {
  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  // Color _color = Color.fromRGBO(255, 76, 119, 1);
  // Color _color2 = Color.fromRGBO(255, 148, 78, 1);
  Color _color = Colors.indigoAccent[400];
  Color _color2 = Color.fromRGBO(60, 148, 150, 1);
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0)),
                  gradient: LinearGradient(
                      colors: [_color, _color2],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
            )),
      ],
    ));
  }
}
