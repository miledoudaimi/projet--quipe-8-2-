import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Question extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Les Questions '),
        centerTitle: true,
        elevation: 0,
      ),
body: StreamBuilder(
        stream: Firestore.instance.collection('test').snapshots(),
    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
if(!snapshot.hasData){
  return Text("no value");

}
  return ListView(
    children: snapshot.data.documents.map((document){
      return Text(document['question1']);

    }).toList(),
  );  },
),
      );
  }
}