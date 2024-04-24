import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media_demo_app/screens/s04.dart';
import 'package:social_media_demo_app/screens/s05.dart';
import 'package:social_media_demo_app/screens/s06.dart';
import 'package:social_media_demo_app/screens/s07.dart';
import 'package:social_media_demo_app/screens/s08.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
      color: kGreyBackgroundColor,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //HOME BUTTON
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, S04.routeID);
            },
            child: Container(
              height: 30,
              width: 30,
              child: SvgPicture.asset('assets/icons/dif/house.svg'),
            ),
          ),
          //DISCOVER/SEARCH BUTTON
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, S07.routeID);
            },
            child: Container(
                height: 30,
                width: 30,
                child:
                    SvgPicture.asset('assets/icons/dif/magnifying-glass.svg')),
          ),
          //ADD/SHARE POST BUTTON
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, S06.routeID);
              },
              child: Container(
                  height: 40,
                  width: 40,
                  child: SvgPicture.asset(
                    'assets/icons/dif/photo-camera.svg',
                    //fit: BoxFit.contain,
                  ))),
          //NOTIFICATIONS BUTTON
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, S08.routeID);
            },
            child: Container(
                height: 30,
                width: 30,
                child: SvgPicture.asset('assets/icons/dif/placeholder.svg')),
          ),
          //PROFILE BUTTON
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, S05.routeID);
            },
            child: Container(
                height: 30,
                width: 30,
                child: SvgPicture.asset('assets/icons/dif/avatar.svg')),
          ),
        ],
      ),
    );
  }
}
