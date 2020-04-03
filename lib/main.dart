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
  int leftDiceNumber  = randomDiceNumber.nextInt(6) + 1;
  int rightDiceNumber = randomDiceNumber.nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {



    return Center(
      child: Row(
        children: <Widget>[
          Expanded(

            child: FlatButton(
              onPressed: () {


                setState(() {
                  leftDiceNumber = randomDiceNumber.nextInt(6) + 1;
                });

                print('left dice pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),),
          ),
          Expanded(

            child: FlatButton(
                onPressed: ()  {

                  setState(() {
                    rightDiceNumber = randomDiceNumber.nextInt(6) + 1;
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

