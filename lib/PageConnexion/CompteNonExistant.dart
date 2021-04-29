import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter2_app/PageConnexion//CreationCompte.dart';
import 'package:flutter2_app/PageConnexion/ResterConnecter.dart';
import 'package:flutter2_app/PageConnexion/authentification.dart';
import 'package:flutter2_app/PageConnexion/widgetPourConnexion.dart';
import 'package:flutter2_app/pages/menuPrincipal.dart';

class connexion2 extends StatefulWidget {
  @override
  _connexionState createState() => _connexionState();
}

class _connexionState extends State<connexion2> {
  final _cle = GlobalKey<FormState>();
  String email, password;

  authentification authentification1= new authentification();
  bool caTelecharge = false;

  get erreur => authentification();

  conexion1() async {
    if (_cle.currentState.validate()) {
      setState(() {
        caTelecharge = true;
      });
      await authentification1.connexionEmailMdp(email, password).then((value) {

        if (value != null) {
          setState(() {
            caTelecharge = false;
            rconnexion.rUtilisateur(rConnecter: true);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Menu()));
          });


        }else{
          caTelecharge = false;
          rconnexion.rUtilisateur(rConnecter: false);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => connexion2()));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: caTelecharge
          ? Container(
          child: Center(

            child: CircularProgressIndicator(
            ),
          ))
          : Form(

        key: _cle,

        child: Container(

            margin: EdgeInsets.symmetric(horizontal: 24),
            child: ListView(

              children: [
                Image(
                  image: AssetImage('assets/Image1.png'),
                ),
                Spacer(),

                TextFormField(

                  validator: EmailValidation.validation,

                  decoration: InputDecoration(hintText: " Erreur réessayer (courriel)",hintStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,

                  ), ),

                  onChanged: (val) {

                    email = val;
                  },
                ),
                SizedBox(

                  height: 8,
                ),

                TextFormField(
                  obscureText: true,
                  validator: mdpvalidation.validation,
                  decoration: InputDecoration(hintText: "Erreur réessayer (mot de passe)",hintStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,

                  ), ),
                  onChanged: (val) {
                    password= val;
                  },
                ),
                SizedBox(
                  height: 45,
                ),
                GestureDetector(
                  onTap: () {
                    conexion1();
                  },
                  child: Container(
                    color: Colors.teal,
                    height: 40,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width - 48,
                    child: Text(

                      'Connexion',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vous n'avez pas de compte ?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => creation()));
                      },
                      child: Text(
                        " Inscrivez-vous",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            )),
      ),
    );
  }








}
