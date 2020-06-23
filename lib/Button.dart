import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function buttonx;
final String ansText ;
  Button(this.buttonx,this.ansText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          ansText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.green,
          ),
        ),
        onPressed: buttonx,
        color: Colors.black38,
      ),
    );
  }
}
