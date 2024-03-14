import 'package:flutter/material.dart';

class CustomCountryPicker extends StatelessWidget {
  final VoidCallback onPress;
  const CustomCountryPicker({
    super.key,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 100,
        height: 48,
        decoration: BoxDecoration(
          // color: Color.fromARGB(255, 228, 227, 227),
          color: Color(0xffeeeeee),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/pakistan.png", width: 50),
              Icon(Icons.arrow_drop_down_rounded, size: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
