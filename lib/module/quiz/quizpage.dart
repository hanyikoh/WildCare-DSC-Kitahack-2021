import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wildlifecare/module/quiz/quizresult.dart';

class GetJson extends StatelessWidget {
  static const String routeName = '/quiz';
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/python.json"),
        builder: (context, snapshot) {
          List mydata = json.decode(snapshot.data.toString());
          if (mydata == null) {
            return Scaffold(
              body: Center(
                child: Text("Loading"),
              ),
            );
          } else {
            return QuizPage(mydata: mydata);
          }
        });
  }
}

class QuizPage extends StatefulWidget {
  var mydata;

  QuizPage({Key key, @required this.mydata}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState(mydata);
}

class _QuizPageState extends State<QuizPage> {
  final List mydata;
  _QuizPageState(this.mydata);

  Color colortoshow = Colors.indigoAccent;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  int timer = 30;
  String showTimer = "30";

  bool cancelTimer = false;

  Map<String, Color> btnColor = {
    "a": Colors.indigoAccent,
    "b": Colors.indigoAccent,
    "c": Colors.indigoAccent,
    "d": Colors.indigoAccent,
  };

  void startTimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (cancelTimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showTimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    cancelTimer = false;
    timer = 30;
    setState(() {
      if (i < 5) {
        i++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => ResultPage(marks: marks),
        ));
      }
      btnColor["a"] = Colors.indigoAccent;
      btnColor["b"] = Colors.indigoAccent;
      btnColor["c"] = Colors.indigoAccent;
      btnColor["d"] = Colors.indigoAccent;
    });
    startTimer();
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void checkAnswer(String k) {
    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
      marks = marks + 5;
      colortoshow = right;
    } else {
      colortoshow = wrong;
    }
    setState(() {
      btnColor[k] = colortoshow;
      cancelTimer = true;
    });
    Timer(Duration(seconds: 2), nextquestion);
  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => checkAnswer(k),
        child: Text(
          mydata[1][i.toString()][k],
          style: TextStyle(
              color: Colors.white, fontFamily: "Alike", fontSize: 16.0),
          maxLines: 1,
        ),
        color: btnColor[k],
        splashColor: Colors.indigo[700],
        highlightColor: Colors.indigo[700],
        minWidth: 200.0,
        height: 45.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text("WildCare"),
                  content: Text("You cant go back at this stage."),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Ok"),
                    )
                  ],
                ));
      },
      child: Scaffold(
          body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(mydata[0][i.toString()],
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "Quando",
                  )),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  choicebutton("a"),
                  choicebutton("b"),
                  choicebutton("c"),
                  choicebutton("d"),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.topCenter,
              child: Center(
                child: Text(
                  showTimer,
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
