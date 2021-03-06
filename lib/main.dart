import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(


        ),
      ),
    ),
  );
}



class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static final randomDiceNumber  = new Random();
  int leftDiceNumber;
  int rightDiceNumber;

  _DicePageState() {
    rollDice();
  }
  void rollDice() {

     leftDiceNumber  = randomDiceNumber.nextInt(6) + 1;
     rightDiceNumber = randomDiceNumber.nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {



    return Center(
      child: Row(
        children: <Widget>[
          Expanded(

            child: FlatButton(
              onPressed: () {


                setState(() {
                  rollDice();
                });

                print('left dice pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),),
          ),
          Expanded(

            child: FlatButton(
                onPressed: ()  {

                  setState(() {
                    rollDice();
                  });

                  print("right dice pressed");
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),

        ],
      ),
    );
  }


}

