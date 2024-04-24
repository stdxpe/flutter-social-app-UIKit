import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_demo_app/constants.dart';
import 'package:social_media_demo_app/screens/customdrawer.dart';
import 'package:social_media_demo_app/screens/customdrawer2.dart';
import 'package:social_media_demo_app/screens/main_pageview.dart';
import 'package:social_media_demo_app/screens/s01.dart';
import 'package:social_media_demo_app/screens/s02.dart';
import 'package:social_media_demo_app/screens/s03.dart';
import 'package:social_media_demo_app/screens/s04.dart';
import 'package:social_media_demo_app/screens/s05.dart';
import 'package:social_media_demo_app/screens/s06.dart';
import 'package:social_media_demo_app/screens/s07.dart';
import 'package:social_media_demo_app/screens/s08.dart';
import 'package:social_media_demo_app/screens/s09.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //this widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media Demo App',
      color: Colors.black,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          color: kGreyBackgroundColor,
          elevation: 0,
        ),
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: S01.routeID,
      routes: {
        S01.routeID: (context) => S01(),
        S02.routeID: (context) => S02(),
        S03.routeID: (context) => S03(),
        S04.routeID: (context) => S04(),
        S05.routeID: (context) => S05(),
        S06.routeID: (context) => S06(),
        S07.routeID: (context) => S07(),
        S08.routeID: (context) => S08(),
        S09.routeID: (context) => S09(),
        MainPageView.routeID: (context) => MainPageView(),
        CustomDrawer2.routeID: (context) => CustomDrawer2(),
        CustomDrawer.routeID: (context) => CustomDrawer(),
      },
    );
  }
}
