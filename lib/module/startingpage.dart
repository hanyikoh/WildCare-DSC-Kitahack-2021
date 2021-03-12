import 'package:flutter/material.dart';
import 'dart:async';
import 'package:wildlifecare/routes/Routes.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
          child: Text("WildCare \n WeCare",
              style: TextStyle(fontSize: 50.0, color: Colors.white))),
    );
  }
}
