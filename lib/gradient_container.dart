import 'package:flutter/material.dart';
import 'package:first_app/custom_text.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Alignment beginAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.red],
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: CustomText(
          "yash",
        ),
      ),
    );
  }
}
