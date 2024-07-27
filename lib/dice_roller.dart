import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'dart:math';


final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/dice-1.png';

  void rollDice() {
    setState(() {
      var randomDiceValue = random.nextInt(6) + 1;
      activeDiceImage = 'assets/dice-$randomDiceValue.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
          height: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16.0),
            ),
            child: StyledText(
              text: widget.text,
            ))
      ],
    );
  }
}
