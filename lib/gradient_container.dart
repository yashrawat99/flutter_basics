import 'package:flutter/material.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Alignment beginAlignment = Alignment.topLeft;
// positional argument are always required
// named argument are optional but we can add required to it

// Image.asset() is a contructor function
class GradientContainer extends StatelessWidget {
  GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  var activeDiceImage = "assets/imgs/dice-1.png";
  void rollDice() {
    activeDiceImage = "assets/imgs/dice-4.png";
    print(activeDiceImage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
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
        ),
      ),
    );
  }
}
