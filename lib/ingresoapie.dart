import 'package:flutter/material.dart';

class IngresoPersona extends StatelessWidget{
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
//        top: 370.0,
//        left: 75.0,
//      ),
      child: Row(
      //mainAxisSize: MainAxisSize.min,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/right_arrow_green.png'),
        SizedBox(width: 30.0),
        Image.asset('assets/left_arrow_green.png'),
        SizedBox(width: 40.0),
        Image.asset('assets/double_arrow_black.png'),
      ],
      ),
    );
  }

  Column _buildButtonColumn(ImageIcon icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}