
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter2_app/PageConnexion/utlisateurModel.dart';


class authentification {
FirebaseAuth autorisation = FirebaseAuth.instance;
String erreur;
User _utilisateurFireBase(FirebaseUser user){
  return user != null ? User(id:  user.uid) : null;
}



  Future connexionEmailMdp(String email, String password) async {
    try {

      AuthResult authResult = await autorisation.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser fireBaseUser= authResult.user;
      return _utilisateurFireBase(fireBaseUser);
    } catch (e) {
      print(e.toString());
      erreur=e.message;
      //return e;
    }
  }
Future creation(String email, String password) async {
  try{
    AuthResult authResult = await autorisation.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser fireBaseUser= authResult.user;
    FirebaseUser firebaseUser = authResult.user;
    return _utilisateurFireBase(fireBaseUser);
  }catch(e){

    print(e.toString());
    erreur=e.message;
    //return e;
  }
}
Future deconexion() async{
  try{
    return await autorisation.signOut();
  }catch(e){
    print(e.toString());
    erreur=e.message;
    //return e;
return null;
  }

}

}
class mdpvalidation {
  static String validation(String value) {
    if(value.isEmpty) {
      return "Entrez votre mot de passe ";
    }if(value.length<7){
      return "votre mot de passe doit contenir au minimum 7 caractères";
    }
    return null;
  }
}
class EmailValidation {

  static String validation(String value) {
   // if () {

    //}
    if (!value.contains('@') ) {
      value.contains(new RegExp(r'[A-Z]'));

      return "Entrez un courriel valide  ";
    }
  if (!value.contains('.' )   ) {
      value.contains(new RegExp(r'[A-Z]'));

      return "votre courriel n'est pas reconnu";
    }
    if(value.length<7){
      return "Entrez un couriel valide svp";
    }


    /* if(value.contains(new RegExp('@'))) {
      return "Rentrez un courriel valide ";
    }*/

    return null;
  }
}
class nomValidation {
  static String validation(String value) {
    if(value.isEmpty) {
      return "Entrez votre nom d'utilisateur ";
    }if(value.length<4){
      return "votre nom d'utilisateur doit contenir au minimum  4 caractères";
    }
    if(value.length>20){
      return "votre nom d'utilisateur doit contenir au maximum 20 caractères";
    }
    return null;
  }
}




