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
  int leftDiceNumber = 5; //Assgining a variable for the left die
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //Used to fill up the child to take up the screen space
            //contains the 'flex' property that decides how much of the space it will take by deafult it is 1
            child: FlatButton(
              onPressed: () {
                setState(() {
                  //Calls the build method again and applies updates
                  leftDiceNumber = 2;
                });
//                print('Left Button Pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            //Used to fill up the child to take up the screen space
            //contains the 'flex' property that decides how much of the space it will take by deafult it is 1
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = 5;
                });
//                print('Right Button Pressed');
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
