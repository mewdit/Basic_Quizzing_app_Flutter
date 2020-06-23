import 'package:flutter/material.dart';

class Questionx extends StatelessWidget {
 final String qText ;
 Questionx(this.qText);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),

      child: Text(qText,style: TextStyle(fontSize: 40,color: Colors.lightBlueAccent),textAlign: TextAlign.center,),
    );
  }
}