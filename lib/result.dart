import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String resultText;
  final int score;
  final Function restart;
  Result(this.score, this.restart);

  @override
  Widget build(BuildContext context) {
    if (score <= 10) {
      resultText = "eh";
    } else if (score <= 20) {
      resultText = "hmph";
    } else {
      resultText = "noice";
    }
    return Container(
     
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
          FloatingActionButton(
      
            child: Text("Restart Quiz"),
            onPressed:restart,
            backgroundColor: Colors.blueAccent,
          
          )
        ],
      ),
    );
  }
}
