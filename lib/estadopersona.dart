import 'package:flutter/material.dart';

class EstadoPersona extends StatelessWidget{
//  String nameEstadoPersona = 'Ingreso a Pie';
//  EstadoPersona(this.nameEstadoPersona);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final description = new Container(
      //alignment: Alignment(0.0, 0.0),
      child: Text(
        //nameEstadoPersona,
        "Ingreso a pie",
        textAlign: TextAlign.center,
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