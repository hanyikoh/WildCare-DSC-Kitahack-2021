import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wildlifecare/widget/drawer.dart';

class ResultPage extends StatefulWidget {
  final int marks;
  ResultPage({Key key, @required this.marks}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState(marks);
}

class _ResultPageState extends State<ResultPage> {
  List<String> images = [
    "assets/images/success.png",
    "assets/images/good.png",
    "assets/images/bad.png",
  ];

  String message;
  String image;

  @override
  void initState() {
    if (marks < 20) {
      image = images[2];
      message = "You should try hard...\n" + "You scored $marks marks";
    } else if (marks < 35) {
      image = images[1];
      message = "You can do better...\n" + "You scored $marks marks";
    } else {
      image = images[0];
      message = "You did well...\n" + "You scored $marks marks";
    }
    super.initState();
  }

  int marks;
  _ResultPageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "result",
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 7,
              child: Material(
                elevation: 10.0,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        child: Container(
                          width: 300.0,
                          height: 300.0,
                          child: ClipRect(
                            child: Image(
                                image: AssetImage(
                              image,
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: Text(message,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: "Quando",
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/home");
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                  splashColor: Colors.indigoAccent,
                )
              ],
            ),
          )
        ],
      ),
      drawer: DrawerNav(),
    );
  }
}
