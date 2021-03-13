import 'package:flutter/material.dart';
import 'package:wildlifecare/widget/drawer.dart';
import 'package:wildlifecare/model/User.dart';

class Leaderboard extends StatefulWidget {
  static const String routeName = '/leaderboard';

  @override
  _LeaderboardState createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  Color my = Colors.brown, CheckMyColor = Colors.white;
  var r = TextStyle(color: Colors.purpleAccent, fontSize: 34);
  List users;
  int i = 0;

  @override
  void initState() {
    users = getUsers();
    super.initState();
  }

  List getUsers() {
    return [
      User(name: "Jagga", imagehref: "assets/images/avatar.png", points: 123),
      User(name: "Interd", imagehref: "assets/images/avatar.png", points: 100),
      User(
          name: "Aloysius", imagehref: "assets/images/avatar.png", points: 100),
      User(name: "Meettt", imagehref: "assets/images/avatar.png", points: 90),
      User(name: "Losss", imagehref: "assets/images/avatar.png", points: 72),
      User(name: "Alif", imagehref: "assets/images/avatar.png", points: 70),
      User(name: "Aida", imagehref: "assets/images/avatar.png", points: 70),
      User(name: "Joey", imagehref: "assets/images/avatar.png", points: 69),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaderboard", style: TextStyle(fontFamily: "Quando")),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15.0, top: 30.0),
                  child: RichText(
                    text: TextSpan(
                      text: "Leader",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                            text: " Board",
                            style: TextStyle(
                                color: Colors.pink,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 15.0),
                  child: Text(
                    'Global Rank Board: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                _createWinnerCard(users[0], 0),
                _createWinnerCard(users[1], 1),
                _createWinnerCard(users[2], 2),
                _createWinnerCard(users[3], 3),
                _createWinnerCard(users[4], 4),
                _createWinnerCard(users[5], 5),
                _createWinnerCard(users[6], 6),
                _createWinnerCard(users[7], 7),
              ],
            ),
          ],
        ),
      ),
      drawer: DrawerNav(),
    );
  }

  Widget _createWinnerCard(User user, int index) {
    if (index >= 1) {
      if (user.points != users[index - 1].points) {
        i++;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.amber, width: 3.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(5.0)),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, top: 10, bottom: 10),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/avatar.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          user.name,
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                          maxLines: 6,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("Points: " + user.points.toString(),
                            style: TextStyle(fontSize: 12)),
                      ),
                      i == 0
                          ? Text("🥇", style: r)
                          : i == 1
                              ? Text("🥈", style: r)
                              : i == 2
                                  ? Text(
                                      "🥉",
                                      style: r,
                                    )
                                  : Text(''),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
