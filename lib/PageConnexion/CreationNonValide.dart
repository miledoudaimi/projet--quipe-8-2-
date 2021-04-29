import 'package:flutter/material.dart';
import 'package:flutter2_app/PageConnexion/connexion.dart';
import 'package:flutter2_app/PageConnexion/widgetPourConnexion.dart';
import 'package:flutter2_app/PageConnexion/ResterConnecter.dart';
import 'authentification.dart';
import 'package:flutter2_app/pages/menuPrincipal.dart';

class creation2 extends StatefulWidget {
  @override
  _creationState createState() => _creationState();
}

class _creationState extends State<creation2> {
  authentification authentification1 = new authentification();
  final _cle = GlobalKey<FormState>();
  bool caTelecharge1=false ;
  String email = '', password = '', nom = "";
  inscrire1()  async{
    if (_cle.currentState.validate()){
      setState(() {
        caTelecharge1 = true;
      });
      authentification1.creation(email, password).then((value) {
        if(value != null){
          setState(() {
            caTelecharge1 = false;
          });
          rconnexion.rUtilisateur(rConnecter: true);
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder:(context) => Menu()
          ));
        }else{
          caTelecharge1 = false;
          rconnexion.rUtilisateur(rConnecter: false);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => creation2()));
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
      body:caTelecharge1 ? Container(
        child: Center(child :CircularProgressIndicator(),),
      ) :Form(
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
                  validator: nomValidation.validation,
                  decoration: InputDecoration(hintText: "Nom d'utilisateur"),
                  onChanged: (val) {
                    nom = val;
                  },
                ),
                TextFormField(
                  validator: EmailValidation.validation,
                  decoration: InputDecoration(hintText: "Courriel invalide",hintStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,

                  ), ),
                  onChanged: (val) {
                    email = val;
                  },
                ),
                SizedBox(
                  height: 6,
                ),
                TextFormField(
                  obscureText: true,
                  validator: mdpvalidation.validation,
                  decoration: InputDecoration(hintText: "Mot de passe"),
                  onChanged: (val) {
                    password = val;
                  },
                ),
                SizedBox(
                  height: 45,
                ),
                GestureDetector(
                  onTap: () {
                    inscrire1();
                  },
                  child: Container(
                    color: Colors.teal,
                    height: 40,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width - 48,
                    child: Text(
                      'Créer votre compte',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Vous avez dejà un compte ?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => connexion()));
                      },
                      child: Text(
                        " Connectez-vous ",
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
