import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
class facile extends StatefulWidget {
  @override
  _facileState createState() => _facileState();
}
//
class _facileState extends State<facile> {
  Timer timer;
  int start = 5;

  @override
  void initState(){
    super.initState();
    startTimer();
  }
  @override
  void dispose(){
    timer.cancel();
    super.dispose();
  }
  void startTimer(){
    timer = Timer.periodic(Duration(seconds: 1), (Timer timer){
      setState(() {
        if(start < 1){
          // Le compte à rebour est à zéro
        } else{
          start--;
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Difficile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
          padding: EdgeInsets.only(bottom:30),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text('$start\n' + 'Question90',
                  style: TextStyle(
                      fontFamily: 'Signatra', fontSize: 40, color:Colors.white),
                ),
              ),
              SizedBox(
                height: 220,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child:RaisedButton(
                  onPressed: ()  {},
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Text(
                    'A.  ...',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child:RaisedButton(
                  onPressed: ()  {},
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Text(
                    'B. ...',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child:RaisedButton(
                  onPressed: ()  {},
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Text(
                    'C. ...',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child:RaisedButton(
                  onPressed: ()  {},
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Text(
                    'D. ...',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}




