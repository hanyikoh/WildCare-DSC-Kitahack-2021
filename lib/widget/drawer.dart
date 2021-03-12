import 'package:flutter/material.dart';
import 'package:wildlifecare/routes/Routes.dart';

class DrawerNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        _createHeader(),
        _createDrawerItem(
          icon: Icons.list,
          text: 'List',
          onTap: () => {
            Navigator.pop(context),
            Navigator.pushNamed(context, Routes.list)
          },
        ),
        _createDrawerItem(
          icon: Icons.fact_check,
          text: 'Quiz',
          onTap: () => {
            Navigator.pop(context),
            Navigator.pushNamed(context, Routes.quiz)
          },
        ),
        _createDrawerItem(
          icon: Icons.leaderboard,
          text: 'Leaderboard',
          onTap: () => {
            Navigator.pop(context),
            Navigator.pushNamed(context, Routes.leaderboard)
          },
        )
      ]),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/header.jpg'),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text(
              "WildCare - WeCare",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
