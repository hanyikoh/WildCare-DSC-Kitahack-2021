import 'package:flutter/material.dart';
import 'package:wildlifecare/model/Wildlife.dart';

class DetailPage extends StatelessWidget {
  final Wildlife wildlife;
  DetailPage({Key key, this.wildlife}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final country = Container(
      padding: const EdgeInsets.all(7.0),
      decoration: new BoxDecoration(
          border: new Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5.0)),
      child: Center(
        child: new Text(
          wildlife.pop,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 80.0),
        Text(
          wildlife.name,
          style: TextStyle(color: Colors.white, fontSize: 45.0),
        ),
        Container(
          width: 90.0,
          child: new Divider(color: Colors.green),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Country: ",
                      style: TextStyle(color: Colors.white),
                    ))),
            Expanded(flex: 1, child: country)
          ],
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 10.0),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage(wildlife.imagehref),
                fit: BoxFit.cover,
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    final bottomContentText = Text(
      wildlife.fact,
      style: TextStyle(fontSize: 18.0),
    );

    final readButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          onPressed: () => {},
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child: Text("ADD TO FAVORITE", style: TextStyle(color: Colors.white)),
        ));

    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[bottomContentText, readButton],
        ),
      ),
    );

    return Scaffold(
      body: ListView(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}
