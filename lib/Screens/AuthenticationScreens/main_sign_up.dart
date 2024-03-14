import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uber/Components/continue_button.dart';
import 'package:uber/Components/country_picker.dart';
import 'package:uber/Components/login_tiles.dart';
import 'package:uber/Components/or_divider.dart';
import 'package:uber/Styling/fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String countryCode = '';
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 25, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // first Text
                Text(
                  "Enter your mobile number",
                  style: normalText1,
                ),

                SizedBox(height: 10),
                // Row for Country Code Picker and Phone TextField
                Row(
                  children: [
                    // Country Code Picker
                    CustomCountryPicker(onPress: () {
                      showCountryPicker(
                        countryListTheme: CountryListThemeData(
                          textStyle: TextStyle(
                            fontSize: 18,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          bottomSheetHeight: 400,
                          inputDecoration: InputDecoration(
                            labelText: "Search",
                            hintText: "Start typing to search",
                          ),
                        ),
                        favorite: ['PK'],
                        context: context,
                        onSelect: (Country c) {
                          print("Country Code: ${c.countryCode.toString()}");
                          print("Phone Code: ${c.phoneCode.toString()}");

                          countryCode = c.phoneCode.toString();
                          setState(() {});
                        },
                      );
                    }),

                    SizedBox(width: 10),
                    // Phone Number TextField
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: " Mobile Number",
                          prefix: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              "+${countryCode}",
                              style: normalText2,
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.lock_person_sharp,
                            color: Colors.black,
                          ),
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Continue Button
                ContinueButton(text: "Continue", onPress: () {}),

                SizedBox(height: 15),
                OrDivider(),

                // ----------------------------- Login Tiles Here ------------------------------------
                SizedBox(height: 15),
                LoginTile(
                  title: "Continue with Google",
                  icon: FontAwesomeIcons.google,
                  onPress: () {},
                ),

                SizedBox(height: 8),
                LoginTile(
                  title: "Continue with Apple",
                  icon: FontAwesomeIcons.apple,
                  onPress: () {},
                ),

                SizedBox(height: 8),
                LoginTile(
                  title: "Continue with FaceBook",
                  icon: FontAwesomeIcons.facebook,
                  onPress: () {},
                ),

                SizedBox(height: 8),
                LoginTile(
                  title: "Continue with Email",
                  icon: Icons.mail_sharp,
                  onPress: () {},
                ),

                SizedBox(height: 20),
                // Divider
                OrDivider(),

                // Find My Account...
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search_rounded),
                    SizedBox(width: 8),
                    Text(
                      "Find my account",
                      style: normalText2,
                    )
                  ],
                ),

                SizedBox(height: 50),
                Text(
                  """By proceeding. you consent to get calls. WhatsApp or SMS messages, including by automated means, from Uber and its affiliates to the number provided.""",
                  style: smallGreyText,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
