import 'package:flutter/material.dart';
import 'package:first_app/custom_text.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Alignment beginAlignment = Alignment.topLeft;
// positional argument are always required
// named argument are optional but we can add required to it
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
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
      child: const Center(
        child: CustomText(
          "Gradient BG App",
        ),
      ),
    );
  }
}
