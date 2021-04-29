import 'package:flutter/material.dart';
Widget appBar(BuildContext context){

  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(text:'Techno Quiz ', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.cyan)),

      ]
    ),
  );
}