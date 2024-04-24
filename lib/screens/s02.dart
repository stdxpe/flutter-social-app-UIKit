import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:social_media_demo_app/components/already_have_an_account_check.dart';
import 'package:social_media_demo_app/components/bg_blur_filter.dart';
import 'package:social_media_demo_app/components/rounded_button.dart';
import 'package:social_media_demo_app/components/rounded_input_field.dart';
import 'package:social_media_demo_app/components/rounded_password_field.dart';
import 'package:social_media_demo_app/constants.dart';
import 'package:social_media_demo_app/screens/s04.dart';

class S02 extends StatelessWidget {
  static const String routeID = 'S02';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          BGBlurFilter(),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: kDefaultMargin * 3,
                ),
                RoundedInputField(
                  icon: Icon(Icons.person, size: 25, color: kPrimaryColor),
                  hintText: 'Email',
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  hintText: 'Password',
                  icon: Icon(Icons.lock, size: 25, color: kPrimaryColor),
                  onChanged: (value) {},
                ),
                RoundedButton(
                  buttonText: 'LOGIN',
                  color: kPrimaryColor,
                  onPressed: () {
                    Navigator.pushNamed(context, S04.routeID);
                  },
                ),
                AlreadyHaveAnAccountCheck(
                  login: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
