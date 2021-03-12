import 'package:quiz_app/HomeLoading.dart';

import 'home.dart';

import 'package:flutter/material.dart';
import 'menu.dart';
import 'drawer.dart';
import 'quizpage.dart';
import 'leaderboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WildCare',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        accentColor: Colors.cyan[600],
      ),
      initialRoute: '/',
      home: MyHomePage(title: 'WildCare'),
      routes: {
        '/list': (context) => homepage(),
        '/quiz': (context) => getjson(),
        '/leaderboard': (context) => Leaderboard(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: HomeLoading(),
      ),
      drawer: DrawerNav(),
    );
  }
}