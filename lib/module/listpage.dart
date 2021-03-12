import 'package:flutter/material.dart';
import 'package:wildlifecare/widget/drawer.dart';

class ListPage extends StatelessWidget {
  static const String routeName = '/list';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Wildlife List"),
        ),
        drawer: DrawerNav(),
        body: Center(child: Text("List")));
  }
}
