import 'package:flutter/material.dart';
import 'package:uber/Styling/fonts.dart';

class ContinueButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const ContinueButton({
    super.key,
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: buttonText,
          ),
        ),
      ),
    );
  }
}
