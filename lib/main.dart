import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
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
  int leftDiceNumber = 6;
  int rightDiceNumber = 6;
  void randomDice(){
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Row(
      children: <Widget>[
        Expanded(
          child: TextButton(onPressed: () {
            setState(() {
             randomDice();
              print('left pressed = $leftDiceNumber');
            });
          },
              child: Image.asset('images/dice$leftDiceNumber.png')),
        ),
        Expanded(
          child: TextButton(onPressed: () {
            setState(() {
             randomDice();
              print('right pressed $rightDiceNumber');
            });
          },
              child: Image.asset('images/dice$rightDiceNumber.png')),
        )
      ],
    ),);
  }
}


