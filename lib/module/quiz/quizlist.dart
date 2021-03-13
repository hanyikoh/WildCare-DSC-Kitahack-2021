import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wildlifecare/module/quiz/quizpage.dart';
import 'package:wildlifecare/widget/drawer.dart';

class QuizList extends StatefulWidget {
  static const String routeName = '/quiz';

  @override
  _QuizListPage createState() => _QuizListPage();
}

class _QuizListPage extends State<QuizList> {
  List<String> images = [
    "assets/images/animal_classes/mammals.png",
    "assets/images/animal_classes/birds.png",
    "assets/images/animal_classes/amphibians.png",
  ];

  Widget customcard(String langname, String image) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => GetJson(),
          ));
        },
        child: Material(
          color: Colors.indigoAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                            height: 200.0,
                            width: 200.0,
                            child: ClipOval(
                                child: Image(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                      image,
                                    )))))),
                Center(
                    child: Text("$langname",
                        style: TextStyle(
                          fontSize: 24.8,
                          color: Colors.white,
                          fontFamily: "Quando",
                          fontWeight: FontWeight.w700,
                        ))),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Click here to challenge\n a quiz for this species",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontFamily: "Alike"),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Text("QuizApp", style: TextStyle(fontFamily: "Quando")),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Mammals", images[0]),
          customcard("Birds", images[1]),
          customcard("Amphibians", images[2]),
        ],
      ),
      drawer: DrawerNav(),
    );
  }
}
