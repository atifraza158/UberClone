import 'package:flutter/material.dart';
import 'package:uber/Components/get_started_button.dart';
import 'package:uber/Screens/AuthenticationScreens/main_sign_up.dart';
import 'package:uber/Styling/colors.dart';
import 'package:uber/Styling/fonts.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeBlue,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Uber",
                style: heading2,
              ),
              const SizedBox(height: 40),
              Image.asset(
                "assets/images/get_started_img.png",
                width: 230,
              ),
              const SizedBox(height: 15),
              const Text(
                "Move With Safety",
                style: heading2,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: GetStartedButton(
          text: "Get Started",
          onPress: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SignUp();
              },
            ));
          },
        ),
      ),
    );
  }
}
