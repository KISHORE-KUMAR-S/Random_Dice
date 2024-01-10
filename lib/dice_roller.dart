import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        // ElevatedButton(onPressed: onPressed, child: child)  //button with background and text
        // OutlinedButton(onPressed: onPressed, child: child)  //button with outline and text
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(8.0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 30.0)),
            child: const Text(
              'Roll Dice',
            ),
          ),
        ) //button with text
      ],
    );
  }
}    //The underscore indicates the class is private and not public.