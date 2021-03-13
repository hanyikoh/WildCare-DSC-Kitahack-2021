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
        // actions: [
        //   IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        // ],
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
      margin: new EdgeInsets.symmetric(vertical: 6.0),
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
                      child: Text(wl.habitats[0]),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    wl.habitats.length > 1
                        ? Container(
                            padding: EdgeInsets.all(10.0),
                            margin: const EdgeInsets.all(10.0),
                            child: Text(wl.habitats[1]),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(12)),
                          )
                        : Container(),
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
          name: "Amur Leopard",
          fact:
              "The Amur leopard is solitary. Nimble-footed and strong, it carries and hides unfinished kills so that they are not taken by other predators. It has been reported that some males stay with females after mating, and may even help with rearing the young. Several males sometimes follow and fight over a female. They live for 10-15 years, and in captivity up to 20 years. The Amur leopard is also known as the Far East leopard, the Manchurian leopard or the Korean leopard.",
          imagehref: "assets/images/amur-leopard.jpg",
          status: "Critically Endangered",
          habitats: ["Forest", "Mountains"],
          countries: [
            "Amur-Heilong",
          ],
          pop: "> 84 individuals"),
      Wildlife(
          name: "African Elephants",
          fact:
              "The African elephant is the largest animal walking the Earth. Their herds wander through 37 countries in Africa. They are easily recognized by their trunk that is used for communication and handling objects. And their large ears allow them to radiate excess heat. Upper incisor teeth develop into tusks in African elephants and grow throughout their lifetime. There are two subspecies of African elephants—the Savanna (or bush) elephant and the Forest elephant. Savanna elephants are larger than forest elephants, and their tusks curve outwards. In addition to being smaller, forest elephants are darker and their tusks are straighter and point downward. There are also differences in the size and shape of the skull and skeleton between the two subspecies.",
          imagehref: "assets/images/African_Elephant.jpg",
          status: "Vulnerable",
          habitats: ["Forest Habitat", "Grasslands"],
          countries: ["Congo Basin", "Coastal East Africa"],
          pop: "Around 415,000"),
      Wildlife(
          name: "Black Rhinos",
          fact:
              "Black rhinos are the smaller of the two African rhino species. The most notable difference between white and black rhinos are their hooked upper lip. This distinguishes them from the white rhino, which has a square lip. Black rhinos are browsers rather than grazers, and their pointed lip helps them feed on leaves from bushes and trees. They have two horns, and occasionally a third, small posterior horn.",
          imagehref: "assets/images/Black_Rhino.jpg",
          status: "Critically Endangered",
          habitats: ["Deserts", "Grasslands"],
          countries: ["Namibia", "Coastal East Africa"],
          pop: "Around 5,600"),
      Wildlife(
          name: "Bornean Orangutan",
          fact:
              "Bornean orangutan populations have declined by more than 50% over the past 60 years, and the species' habitat has been reduced by at least 55% over the past 20 years.\n\nThe Bornean orangutan differs in appearance from the Sumatran orangutan, with a broader face and shorter beard and also slightly darker in color. ",
          imagehref: "assets/images/Bornean_Orangutan.jpg",
          status: "Endangered",
          habitats: ["Forest Habitats", "Woodlands"],
          countries: ["Borneo and Sumatra"],
          pop: "About 104,700"),
      Wildlife(
          name: "Wild Dog",
          fact:
              "The wild dog is one of the world’s most endangered mammals. The largest populations remain in southern Africa and the southern part of East Africa (especially Tanzania and northern Mozambique).\n\nWild dogs are social and gather in packs of around ten individuals, but some packs number more than 40. They are opportunistic predators that hunt medium-sized ruminants, such as gazelles. In a sprint, African wild dogs can reach speeds of more than 44 miles per hour.",
          imagehref: "assets/images/wild_dogs.jpg",
          status: "Endangered",
          habitats: ["Forest Habitat", "Grasslands", "Deserts"],
          countries: ["Coastal East Africa"],
          pop: "1,409"),
      Wildlife(
          name: "Giant Panda",
          fact:
              "The panda, with its distinctive black and white coat, is adored by the world and considered a national treasure in China. This bear also has a special significance for WWF because it has been our logo since our founding in 1961.\n\nPandas live mainly in temperate forests high in the mountains of southwest China, where they subsist almost entirely on bamboo. They must eat around 26 to 84 pounds of it every day, depending on what part of the bamboo they are eating. They use their enlarged wrist bones that function as opposable thumbs.",
          imagehref: "assets/images/Panda.jpg",
          status: "Vulnerable",
          habitats: ["Mountains", "Forest Habitat"],
          countries: ["Yangtze"],
          pop: "1,864"),
      Wildlife(
          name: "Asian Elephant",
          fact:
              "The Asian elephant is the largest land mammal on the Asian continent. They inhabit dry to wet forest and grassland habitats in 13 range countries spanning South and Southeast Asia. While they have preferred forage plants, Asian elephants have adapted to surviving on resources that vary based on the area.",
          imagehref: "assets/images/asian-elephant.jpg",
          status: "Endangered",
          habitats: [
            "Forest Habitats",
          ],
          countries: ["Eastern Himalayas", "Greater Mekong"],
          pop: "< 50,000"),
      Wildlife(
          name: "Blue Whale",
          fact:
              "The blue whale is the largest animal on the planet, weighing as much as 200 tons (approximately 33 elephants). The blue whale has a heart the size of a Volkswagen Beetle. Its stomach can hold one ton of krill and it needs to eat about four tons of krill each day. They are the loudest animals on Earth and are even louder than a jet engine. Their calls reach 188 decibels, while a jet reaches 140 decibels. Their low frequency whistle can be heard for hundreds of miles and is probably used to attract other blue whales.",
          imagehref: "assets/images/shutterstock.jpg",
          status: "Endangered",
          habitats: [
            "Ocean Habitat",
          ],
          countries: ["Southern Chile", "Gulf of California", "Coral Triangle"],
          pop: "10,000-25,000"),
    ];
  }
}
