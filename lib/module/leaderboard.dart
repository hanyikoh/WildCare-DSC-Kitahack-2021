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

  @override
  void initState() {
    users = getUsers();
    super.initState();
  }

  List getUsers() {
    return [
      User(name: "Jagga", imagehref: "assets/images/avatar.png", points: 123),
      User(name: "Interd", imagehref: "assets/images/avatar.png", points: 100),
      User(name: "Meettt", imagehref: "assets/images/avatar.png", points: 100),
      User(name: "Losss", imagehref: "assets/images/avatar.png", points: 99),
      User(name: "Alif", imagehref: "assets/images/avatar.png", points: 88),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaderboard", style: TextStyle(fontFamily: "Quando")),
      ),
      body: Stack(
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
              // ListView.builder(
              //     itemCount: this.users.length,
              //     itemBuilder: (context, index) {
              //       // return _createWinnerCard(users[index], index);
              //     }),
            ],
          ),
        ],
      ),
      drawer: DrawerNav(),
    );
  }

  Widget _createWinnerCard(User user, int index) {
    int i = 0;
    if (index >= 1) {
      print('Greater than 1');
      if (user.points == users[index - 1].points) {
        print('Same');
      } else {
        i++;
      }
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: InkWell(
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
                    padding: const EdgeInsets.only(top: 10.0, left: 15.0),
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
                    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            user.name,
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 6,
                          ),
                        ),
                        Text(user.points.toString()),
                        i == 0
                            ? Text("🥇", style: r)
                            : i == 1
                                ? Text(
                                    "🥈",
                                    style: r,
                                  )
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
      ),
    );
  }
}
