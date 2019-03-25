import 'package:flutter/material.dart';

class Estado extends StatelessWidget{
  String nameEstado;
  Estado(this.nameEstado);

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
      final description = new Container(
        alignment: Alignment(0.0, 0.0),
        child: Text(
          nameEstado,
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black54
          ),
        ),
      );
      return Container(child: description);
  }

}