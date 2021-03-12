import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

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
          top: screenHeight*0.23,
          left:0,
          right:0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(image:DecorationImage(
              image:NetworkImage("https://padelcalatayud.com/Blog/wp-content/uploads/2019/01/ranking-300x237.jpg"),
              fit:BoxFit.fill
            )),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(left:24.0, right:24.0),
            height: screenHeight * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                ),

                gradient: LinearGradient(
                    colors: [_color, _color2],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight)
            ),
              child:SafeArea(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Spacer(),
                          Text(
                              "Lorem Ipsum",
                              style: TextStyle(color:Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold)
                          ),
                          Spacer(),
                          // Icon(
                          //   Icons.arrow_back_ios,
                          //   size:36.0,
                          //   color:Colors.white,
                          // ),
                          // OutlineButton(
                          //   onPressed: () {
                          //     Navigator.of(context).pushReplacement(MaterialPageRoute(
                          //       builder: (context) => homepage(),
                          //     ));
                          //   },
                          // ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Spacer(),
                          Text("Lorem Ipsum", style: TextStyle(color:Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600),),
                          SizedBox(width:16.0),
                          Text("Last Score: 50", style: TextStyle(color:Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600),),
                        ],
                      ),
                      Text("Highest Score: 90", style: TextStyle(color:Colors.white, fontSize: 28.0, fontWeight: FontWeight.w600),),
                    ],
                  )
              )
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
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => homepage(),
                    ));
                  },
                  child: Text(
                    "Return Home Page",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                  splashColor: Colors.indigoAccent,
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
