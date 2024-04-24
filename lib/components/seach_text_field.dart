import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media_demo_app/constants.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.8),
      child: TextField(
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 1,
          fontSize: 25,
          //fontWeight: FontWeight.w100,
        ),
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
              color: Colors.white54,
              alignment: Alignment.topRight,
            ),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.white54,
            letterSpacing: 1,
            fontSize: 25,
            //fontWeight: FontWeight.w100,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white54,
              width: 1,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
