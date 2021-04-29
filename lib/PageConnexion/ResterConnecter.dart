import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';


class rconnexion{
static String rcle= "rcle";
  static rUtilisateur({@required bool rConnecter}) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool( rcle, rConnecter);
  }
 static  Future<bool> ConnexionInfo() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
 return  prefs.getBool(rcle);
}
}

