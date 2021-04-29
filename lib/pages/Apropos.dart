import 'package:flutter/material.dart';
import 'package:http/http.dart';


class propos2 extends StatefulWidget {
  @override
  _propos2State createState() => _propos2State();
}

class _propos2State extends State<propos2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('A propos de nous '),
          centerTitle: true,
          elevation: 0,

        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Column(children: <Widget>[
            Text(
                'Miled Oudaimi: \n'
                    '\n'
                    '\n'
                    '\n'
                    'Marc-Alexandre Patino Cuenca: \n'
                    '\n'
                    '\n'
                    '\n'
                    'Lucas Thibodeau:\n',
          style: TextStyle(
              color: Colors.black,
            letterSpacing: 2,
            fontSize: 20,
          ),
            ),
          ],

          ),


        ));
  }
}