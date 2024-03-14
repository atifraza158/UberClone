import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            width: MediaQuery.sizeOf(context).width / 2.8,
            height: 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            color: Colors.grey,
            ),
          ),
        ),
        Text("Or"),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: MediaQuery.sizeOf(context).width / 2.8,
            height: 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
