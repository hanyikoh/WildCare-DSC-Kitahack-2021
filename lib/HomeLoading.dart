import 'package:flutter/material.dart';
import 'package:quiz_app/drawer.dart';
import 'dart:async';
import 'home.dart';
import 'menu.dart';

class HomeLoading extends StatefulWidget {
  @override
  _HomeLoadingState createState() => _HomeLoadingState();
}

class _HomeLoadingState extends State<HomeLoading> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context)=> Menu()
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body:Center(
            child:Text(
                "QuizApp",
                style:TextStyle(
                    fontSize: 50.0,
                    color: Colors.white
                )
            )
        ),
    );
  }
}
