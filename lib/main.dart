import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: DiceRool(),
      ),
    ));
  }
}

class DiceRool extends StatefulWidget {
  const DiceRool({super.key});

  @override
  State<DiceRool> createState() => _DiceRoolState();
}

class _DiceRoolState extends State<DiceRool> {
  int leftDie = 1;
  int rightDie = 6;
  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () => {
                setState(
                  () => {leftDie = Random().nextInt(6) + 1, print(leftDie)},
                )
              },
              child: Image.asset('images/dice${leftDie}.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(
                  () => {rightDie = Random().nextInt(6) + 1, print(rightDie)},
                );
              },
              child: Image.asset('images/dice${rightDie}.png'),
            ),
          )
        ],
      ),
    ));
  }
}
