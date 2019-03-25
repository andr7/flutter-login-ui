import 'package:flutter/material.dart';
import 'estado.dart';
import 'ingresoapie.dart';
import 'ingresoenbus.dart';
import 'estadopersona.dart';
import 'estadobus.dart';

class MolinoPage extends StatelessWidget {
  _buildMolinosList() {
    /*return <MolinoModal>[
      const MolinoModal(Image.asset('assets/right_arrow_yelow.png')),
//      const MolinoModal(fullName: '2. Molinete       250'),
//      const MolinoModal(fullName: '3. Molinete       424'),
//      const MolinoModal(fullName: '4. Molinete       100'),
//      const MolinoModal(fullName: '5. Molinete       121'),
    ];*/
    //return const MolinoModal(Image.asset('assets/right_arrow_yelow.png')
  }
   final estado = "Ingresando en AUD-710";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
          children: <Widget>[
            new Container(
                margin: const EdgeInsets.only(
                    bottom: 520.0,
                    right: 20.0,
                    left: 20.0
                ),
                decoration: new BoxDecoration(
                  border: Border.all(color: Colors.red),
                ),
                child: new Estado(estado)
            ),
            new Container(
              alignment: Alignment(0.0, 0.0),
                margin: const EdgeInsets.only(
                  top: 70.0,
                  bottom: 260.0,
                  right: 50.0,
                  left: 40.0
                ),
//                decoration: new BoxDecoration(
//                  border: Border.all(color: Colors.blueAccent),
//                ),
                child: new MolinosList(_buildMolinosList()),
//                margin: EdgeInsets.only(
//                  top: 50.0,
//                  left: 100.0
//                ),
            ),
            new Container(
                margin: const EdgeInsets.only(
                    bottom: 236.0,
                    top: 298,
                    right: 20.0,
                    left: 20.0
                ),
                //padding: EdgeInsets.all(0.0),
                decoration: new BoxDecoration(
                  border: Border.all(color: Colors.lightBlueAccent),
                ),
                child: new EstadoPersona()
            ),
            new Container(
              margin: const EdgeInsets.only(
                  top: 322.0,
                  //bottom: 120.0,
                  right: 20.0,
                  left: 20.0
              ),
              padding: EdgeInsets.only(
                left: 25.0,
                top: 10.0,
                bottom: 10.0
              ),
              decoration: new BoxDecoration(
                border: Border.all(color: Colors.green),
              ),
              child: IngresoPersona()
//              child: Row(
//                children: <Widget>[
//                  IngresoPersona()
//                ],
//              ),
            ),
            new Container(
                margin: const EdgeInsets.only(
                    bottom: 132.0,
                    top: 402,
                    right: 20.0,
                    left: 20.0
                ),
                //padding: EdgeInsets.all(0.0),
                decoration: new BoxDecoration(
                  border: Border.all(color: Colors.orange),
                ),
                child: new EstadoBus()
            ),
            new Container(
              height: 100.0,
              margin: const EdgeInsets.only(
                  top: 426.0,
                  bottom: 52.0,
                  right: 20.0,
                  left: 20.0
              ),
              padding: EdgeInsets.only(
                  left: 25.0,
                  top: 10.0,
                  bottom: 10.0
              ),
              decoration: new BoxDecoration(
                border: Border.all(color: Colors.purple),

              ),
              child: IngresoBus()
            )
          ],
        )
    );
    //return Container(child: MolinosList(_buildMolinosList())) ;
  }
}

class MolinoModal {
  final String fullName;
  const MolinoModal({this.fullName});
}

class MolinosList extends StatelessWidget {
  final List<MolinoModal> _molinoModal;

  MolinosList(this._molinoModal);

  @override
  Widget build(BuildContext context) {
//    return new ListView(
//      //padding: new EdgeInsets.symmetric(vertical: 1.0),
//      children: _buildMolinosList(),
//    );

    return new Column(
      children: <Widget>[
        Image.asset('assets/turnstile.png')
      ],
//      children: [
//        Expanded(
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children:[
//              Image.asset('assets/turnstile.png'),
//              Image.asset('assets/turnstile.png')
//            ]
//          )
//        ),
//        Expanded(child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children:[
//              SizedBox(height: 20.0),
//              Text("120",
//              style: TextStyle(
//                fontSize: 15.0,
//                //height: 3.0,
//              ),),
//              SizedBox(height: 40.0),
//              Text("150",
//                style: TextStyle(
//                    fontSize: 15.0
//                ),)
//            ]
//        ))
//      ]
    );
  }

  List<MolinoListItem> _buildMolinosList() {
    return _molinoModal
        .map((nombre) => new MolinoListItem(nombre))
        .toList();
  }
}

class MolinoListItem extends StatelessWidget {
  final MolinoModal _molinoModal;

  MolinoListItem(this._molinoModal);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
        //leading: new CircleAvatar(child: new Text(_molinoModal.fullName[0])),
        title: new Text(_molinoModal.fullName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.purple,
        ),
    ),
    );
  }
}
BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(),
  );
}



