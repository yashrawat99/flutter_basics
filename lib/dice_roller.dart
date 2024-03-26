import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  // NO BUILD METHOD here

  @override
  State<DiceRoller> createState() {
    return __DiceRollerState();
  }
}

class __DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/imgs/dice-1.png";
  void rollDice() {
    var roll = randomizer.nextInt(6) + 1;
    setState(() {
      //tells flutter to call build method again,
      activeDiceImage = "assets/imgs/dice-$roll.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ), //to add empty height in between
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(
                20,
              ), //for padding
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text(
            "Roll dice",
          ),
        )
      ],
    );
  }
}
