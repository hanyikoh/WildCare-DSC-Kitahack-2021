import 'package:flutter/material.dart';
import 'package:wildlifecare/widget/drawer.dart';

class QuizPage extends StatelessWidget {
  static const String routeName = '/quiz';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Wildlife Quiz"),
        ),
        drawer: DrawerNav(),
        body: Center(child: Text("Quiz")));
  }
}
