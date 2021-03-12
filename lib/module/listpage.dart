import 'package:flutter/material.dart';
import 'package:wildlifecare/widget/drawer.dart';

class ListPage extends StatelessWidget {
  // final _saved = <Wildlife>{};
  static const String routeName = '/list';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Wildlife List"),
        actions: [
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      drawer: DrawerNav(),
      body: ListView(
        children: <Widget>[
          _createWildlife(),
          _createWildlife(),
        ],
      ),
    );
  }

  void _pushSaved() {}

  Widget _createWildlife() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: [
                Text(
                  "Number - Name",
                  style: TextStyle(fontSize: 20.0),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      margin: const EdgeInsets.all(10.0),
                      child: Text("Char. 1"),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      margin: const EdgeInsets.all(10.0),
                      child: Text("Charact. 2"),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ],
                )
              ]),
              new ClipRRect(
                borderRadius: new BorderRadius.circular(3.0),
                child: Image(image: AssetImage("assets/images/quiz.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
