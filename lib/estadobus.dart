import 'package:flutter/material.dart';

class EstadoBus extends StatelessWidget{
  //String nameEstadoBus = 'Ingreso en Bus';
  //EstadoBus(this.nameEstadoBus);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final description = new Container(
      //alignment: Alignment(0.0, 0.0),
      child: Text(
        "Ingreso en Bus",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
    return Center(child: description);
  }

}