import 'package:flutter/material.dart';
import 'package:social_media_demo_app/components/rounded_button.dart';
import 'package:social_media_demo_app/components/slideshow.dart';
import 'package:social_media_demo_app/constants.dart';
import 'package:social_media_demo_app/screens/s02.dart';
import 'package:social_media_demo_app/screens/s03.dart';

class S01 extends StatelessWidget {
  static const String routeID = 'S01';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          CarouselPage(),
          PageView(),
          Container(
            color: Colors.black54.withOpacity(0.4),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'to Meet Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.normal),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height / 9),
                  child: RoundedButton(
                    buttonText: 'LOG IN',
                    color: kPrimaryColor,
                    onPressed: () {
                      //Navigator.pushNamed(context, S02.routeID);

                      Navigator.of(context).push(
                        PageRouteBuilder(
                          opaque: false, // set to false
                          pageBuilder: (_, __, ___) => S02(),
                        ),
                      );
                    },
                  ),
                ),
                RoundedButton(
                  buttonText: 'SIGN UP',
                  color: kSecondaryColor,
                  onPressed: () {
                    // Navigator.pushNamed(context, S03.routeID);

                    Navigator.of(context).push(
                      PageRouteBuilder(
                        opaque: false, // set to false
                        pageBuilder: (_, __, ___) => S03(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
