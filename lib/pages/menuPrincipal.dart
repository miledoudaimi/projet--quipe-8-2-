import 'package:flutter/material.dart';


import 'package:flutter2_app/PageConnexion/ResterConnecter.dart';


import '../PageConnexion/connexion.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    //  Text('Techno Quiz');
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text('Techno Quiz ',style: TextStyle(color: Color(0xDD000000)),),

        centerTitle: true,
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body:
      Column(

        //  mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Image(
            image: AssetImage('assets/Image1.png'),
          ),

          ButtonTheme(
            buttonColor: Color(0xFF26A69A),
            minWidth: 320,
            child: RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/sansTemps2');
              },
              icon:Container(width:15, child: Icon(Icons.alarm_off),),
              label: Text(
                ' facile (sans temps limite) ',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ButtonTheme(
            buttonColor:  Color(0xFFFF5722),
            minWidth: 320,
            child: RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/avecTemps');
              },
              icon:Container(width:15, child: Icon(Icons.alarm_add_sharp),),
              label: Text(
                ' difficile (avec temps limite) ',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ButtonTheme(
            buttonColor: Color(0xFF26A69A),
            minWidth: 320,
            child: RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/Questions');
              },
              icon:Container(width:15, child: Icon(Icons.article),),
              label: Text(
                ' Les Questions du jeu ',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ButtonTheme(
            buttonColor: Color(0xFF42A5F5),
            minWidth: 320,
            child: RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/Apropos');
              },
              icon: Container(width:15, child:Icon(Icons.account_box_sharp),),
              label: Text(
                ' À propos de nous ',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          ButtonTheme(
            buttonColor: Color(0xFFB0BEC5),
            minWidth: 320,
            child: RaisedButton.icon(

              onPressed: () {
                Navigator.pushReplacement(

                    context, MaterialPageRoute(builder: (context) => connexion(),));
                rconnexion.rUtilisateur(rConnecter: false);
              },
              icon:Container(width:15, child: Icon(Icons.logout),),

              label: Text(
                ' Déconnexion',
                style: TextStyle(fontSize: 20),

              ),

            ),
          ),
        ],
      ),

    );

  }
}
