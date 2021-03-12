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
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: screenHeight * 0.10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0)),
              gradient: LinearGradient(
                  colors: [_color, _color2],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.home,
                  size: 28.0,
                  color: Colors.white,
                ),
                Container(
                  width:150.0,
                    height: 28.0,
                    decoration: ShapeDecoration(
                        shape: StadiumBorder(), color: Colors.white),
                    child: Center(
                      child: Text("Play",
                          style: TextStyle(
                              color: _color,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600)),
                    ),
                ),
                Icon(
                  Icons.account_circle,
                  size: 28.0,
                  color:Colors.white,
                )
              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}
