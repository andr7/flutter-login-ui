import 'package:flutter/material.dart';

class IngresoBus extends StatelessWidget{
  //String name;
  //IngresoPersona(this.name);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color color = Theme.of(context).primaryColor;
    final icono_left_arrow_green = new Hero(
      tag: 'ingresoapie',
      child: Image.asset('assets/left_arrow_green.png'),
    );
    return Container(
//      margin: EdgeInsets.only(
//        top: 440.0,
//        left: 75.0,
//      ),
      child: Row(
        children: [
          Image.asset('assets/right_arrow_yelow.png'),
          SizedBox(width: 30.0),
          Image.asset('assets/left_arrow_yelow.png'),
          SizedBox(width: 40.0),
          Image.asset('assets/cancel_red.png'),
        ],
      ),
    );
  }
}