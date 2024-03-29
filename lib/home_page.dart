import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'estado.dart';
import 'listview_ca.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  String estado = "Ingresando en AUD-710";

  @override
  Widget build(BuildContext context) {
    final title = "Control de Acceso";

    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
          title: Text(
              title
          ),
            backgroundColor: Colors.green,
        ),
            body: MolinoPage(),
            /*new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    //child: ChoiceCard(choice: choices[index], item: choices[index]),
                    child: new GestureDetector(
                      onTap: () {
                        //Navigator.pushNamed(context, "myRoute");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => new Estado(estado),
                          ),
                        );
                      },
                      child: ChoiceCard(choice: choices[index], item: choices[index]),
                    ),
                  );
                }
                ),
            )*/
        )
    );
  }
}

Widget westado = new Container(
  //alignment: Alignment(0.0, 0.0),
  child: Text(
    "Estado",
    style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        //color: Color(0xFF56575a)
        color: Color(0xFFf2C611),
        height: 10.0
    ),
  ),
);

Widget westado2 = new Container(
  alignment: Alignment(0.0, -0.9),
  child: Text(
    "Estado2",
    style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        //color: Color(0xFF56575a)
        color: Color(0xFFf2C611)
    ),
  ),
);

class DetailScreen extends StatelessWidget {
  //final Choice card;
  //DetailScreen({Key key, @required this.card}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Control de Acceso"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Text("Detalle 2"),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'This is a Car, because its a car. So, it\'s a car', icon: Icons.directions_car),
  const Choice(title: 'This is a Boat, because its a Boat. So, it\'s a Boat', icon: Icons.directions_boat),
  const Choice(title: 'This is a Bus, because its a Bus. So, it\'s a Bus', icon: Icons.directions_bus),
  const Choice(title: 'This is a Train, because its a Train. So, it\'s a Train', icon: Icons.directions_railway),
  const Choice(title: 'This is a Walk, because its a Walk. So, it\'s a Walk', icon: Icons.directions_walk),
  const Choice(title: 'This is a Bicycle, because its a Bicycle. So, it\'s a Bicycle', icon: Icons.directions_bike),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
      ) : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(18.0),
                alignment: Alignment.topLeft,
                child: Icon(choice.icon, size:80.0, color: textStyle.color,)),
            new Expanded(
                child: new Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.topLeft,
                  child:
                  Text(choice.title, style: null, textAlign: TextAlign.left, maxLines: 5,),
                )
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
    );
  }
}