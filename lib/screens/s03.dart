import 'package:flutter/material.dart';
import 'package:social_media_demo_app/components/already_have_an_account_check.dart';
import 'package:social_media_demo_app/components/bg_blur_filter.dart';
import 'package:social_media_demo_app/components/rounded_button.dart';
import 'package:social_media_demo_app/components/rounded_input_field.dart';
import 'package:social_media_demo_app/components/rounded_password_field.dart';
import 'package:social_media_demo_app/constants.dart';
import 'package:social_media_demo_app/screens/main_pageview.dart';

class S03 extends StatelessWidget {
  static const String routeID = 'S03';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          BGBlurFilter(),
          // Image.asset(
          //   'assets/images/image2.png',
          //   fit: BoxFit.cover,
          //   alignment: Alignment(0.1, 0),
          // ),
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN UP',
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
                    hintText: 'New Password',
                    icon: Icon(Icons.lock, size: 25, color: kPrimaryColor),
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    hintText: 'Confirm Password',
                    icon: Icon(Icons.lock, size: 25, color: kPrimaryColor),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RoundedButton(
                    buttonText: 'SIGN UP',
                    color: kPrimaryColor,
                    onPressed: () {
                      Navigator.pushNamed(context, MainPageView.routeID);
                    },
                  ),
                  AlreadyHaveAnAccountCheck(
                    login: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
