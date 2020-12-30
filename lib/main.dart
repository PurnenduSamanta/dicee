import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:<Widget> [
          Expanded(
            // flex: 2,
            child: FlatButton(
          onPressed: (){
          setState(() {
            changingState();
       });
    },
              child: Image.asset('images/dice$leftDiceNumber.png'),


            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
              onPressed: (){
                setState(() {
                 changingState();
                });

              },
            ),
          ),
        ],
      ),
    );
  }

  void changingState()
  {
    leftDiceNumber=Random().nextInt(6)+1;
    rightDiceNumber=Random().nextInt(6)+1;
  }
}






