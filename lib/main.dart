import 'package:quiz_app/home.dart';

import 'HomeLoading.dart';
import 'package:flutter/material.dart';
import 'leaderboard.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "QuizApp",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:homepage(),
    );
  }
}