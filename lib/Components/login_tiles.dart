import 'package:flutter/material.dart';
import 'package:uber/Styling/fonts.dart';

class LoginTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  const LoginTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 48,
        decoration: BoxDecoration(
          color: Color(0xffeeeeee),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon),
              SizedBox(width: 8),
              Text(title, style: normalText2,),
            ],
          ),
        ),
      ),
    );
  }
}
