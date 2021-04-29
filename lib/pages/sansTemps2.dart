import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class temps2 extends StatefulWidget {
  @override
  _temps2State createState() => _temps2State();
}

class _temps2State extends State<temps2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Facile  '),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
          padding: EdgeInsets.only(bottom: 30),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Question',
                  style: TextStyle(
                      fontFamily: 'Signatra',
                      fontSize: 40,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 230,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: RaisedButton(
                  onPressed: () async {

                    DocumentSnapshot variable = await Firestore.instance.collection('test').document('C6yIRkuDAWereZ3PMUnx').get();
                    print(variable['question2']);

                  },
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Text(
                    'A.  ...',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Text(
                    'B. ...',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Text(
                    'C. ...',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Text(
                    'D. ...',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              )
            ],
          )),
    );
  }
}