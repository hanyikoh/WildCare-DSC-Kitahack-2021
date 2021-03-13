import 'package:flutter/material.dart';
import 'widget/menu.dart';
import 'widget/drawer.dart';
import 'package:wildlifecare/module/listpage.dart';
import 'package:wildlifecare/module/quiz/quizlist.dart';
import 'package:wildlifecare/module/leaderboard.dart';
import 'package:wildlifecare/module/startingpage.dart';

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
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      routes: {
        '/home': (context) => MyHomePage(title: 'WildCare'),
        '/list': (context) => ListPage(),
        '/quiz': (context) => QuizList(),
        '/leaderboard': (context) => Leaderboard()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String routeName = "/home";
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
        child: Menu(),
      ),
      drawer: DrawerNav(),
    );
  }
}
