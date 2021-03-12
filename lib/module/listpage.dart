import 'package:flutter/material.dart';
import 'package:wildlifecare/widget/drawer.dart';
import 'package:wildlifecare/model/Wildlife.dart';
import 'package:wildlifecare/module/detailpage.dart';

class ListPage extends StatefulWidget {
  static const String routeName = "/list";
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final _saved = <Wildlife>{};
  List wildlives;

  @override
  void initState() {
    wildlives = getWildlives();
    super.initState();
  }

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
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: wildlives.length,
          itemBuilder: (BuildContext context, int index) {
            return _createWildlife(wildlives[index]);
          },
        ),
      ),
    );
  }

  void _pushSaved() {}

  Widget _createWildlife(Wildlife wl) {
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () => {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(wildlife: wl)))
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: [
                Text(
                  wl.name,
                  style: TextStyle(fontSize: 20.0),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      margin: const EdgeInsets.all(10.0),
                      child: Text(wl.countries[0]),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      margin: const EdgeInsets.all(10.0),
                      child: Text(wl.countries[1]),
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

  List getWildlives() {
    return [
      Wildlife(
          name: "ABUDEN",
          fact:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
          imagehref:
              "https://www.google.com/url?sa=i&url=https%3A%2F%2Fhatrabbits.com%2Fen%2Frandom-image%2F&psig=AOvVaw0jeTm9UpifIaA6wUG8gznN&ust=1615633233068000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDol_rMqu8CFQAAAAAdAAAAABAD",
          status: "ITAKTAU",
          habitats: [
            "Forest - Subtropical/Tropical Moist Montane"
          ],
          countries: [
            "Colombia",
            "Ecuador",
            "Peru",
            "Venezuela, Bolivarian Republic of"
          ],
          threats: [
            "Annual & perennial non-timber crops",
            "Agro-industry farming",
            "Livestock farming & ranching",
            "Agro-industry grazing, ranching or farming",
            "Work & other activities"
          ]),
      Wildlife(
          name: "ABUDEN",
          fact:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          imagehref:
              "https://www.google.com/url?sa=i&url=https%3A%2F%2Fhatrabbits.com%2Fen%2Frandom-image%2F&psig=AOvVaw0jeTm9UpifIaA6wUG8gznN&ust=1615633233068000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKDol_rMqu8CFQAAAAAdAAAAABAD",
          status: "ITAKTAU",
          habitats: [
            "Forest - Subtropical/Tropical Moist Montane"
          ],
          countries: [
            "Colombia",
            "Ecuador",
            "Peru",
            "Venezuela, Bolivarian Republic of"
          ],
          threats: [
            "Annual & perennial non-timber crops",
            "Agro-industry farming",
            "Livestock farming & ranching",
            "Agro-industry grazing, ranching or farming",
            "Work & other activities"
          ]),
    ];
  }
}
