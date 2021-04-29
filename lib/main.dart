import 'package:flutter/material.dart';
import'package:flutter2_app/pages/Apropos.dart';
import 'package:flutter2_app/pages/Questions.dart';
import 'package:flutter2_app/pages/avecTemps.dart';
import 'file:///C:/Users/Walid/Documents/GitHub/Projet-quipe-8/lib/PageConnexion/ResterConnecter.dart';
import 'file:///C:/Users/Walid/Documents/GitHub/Projet-quipe-8/lib/PageConnexion/connexion.dart';
import'package:flutter2_app/pages/menuPrincipal.dart';
import'package:flutter2_app/pages/menuPrincipal.dart';
import 'package:flutter2_app/pages/sansTemps2.dart';


void main() {
  runApp(App());

}
class App extends StatefulWidget {


  @override
  _appState createState() => _appState();
}

class _appState extends State<App> {
  bool _connecter=false;
  void initState(){
    CheckUserLoggedInStatus();
    super.initState();
  }
 CheckUserLoggedInStatus() async {
rconnexion.ConnexionInfo().then((value){
  setState(() {
    _connecter= value;
  });
});
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

        home: (_connecter?? false) ? Menu():connexion(),
      routes: {

        '/menuPrincipal': (context) => Menu(),
        '/Apropos':(context) => propos2(),
        '/Questions':(context) => Question(),
        '/sansTemps2':(context) => temps2(),
        '/avecTemps':(context) => facile(),





  });
  }}
