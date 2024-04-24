import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF8A56AC);
const kSecondaryColor = Color(0xFFD47FA6);
const kTertiaryColor = Color(0xFF9599B3);
const kBackgroundColor = Color(0xFF241332);
const kGreyBackgroundColor = Color(0xFFF1F0F2);

const kDefaultPadding = 25.0;
const kDefaultMargin = 25.0;

var kBorderRadiusBig = new BorderRadius.circular(80.0);
var kBorderRadiusSmall = new BorderRadius.circular(50.0);
var kBorderRadiusMini = new BorderRadius.circular(20.0);

var kBorderRadiusImage = BorderRadius.only(
    topLeft: Radius.circular(35),
    topRight: Radius.circular(35),
    bottomLeft: Radius.circular(35),
    bottomRight: Radius.circular(35));

var kBorderRadiusProfile = BorderRadius.only(
  topLeft: Radius.circular(50),
  topRight: Radius.circular(50),
);

var kBorderRadiusProfileLeftGrid = BorderRadius.only(
  topLeft: Radius.circular(50),
  bottomLeft: Radius.circular(50),
);

var kBorderRadiusProfileRightTopGrid = BorderRadius.only(
  topRight: Radius.circular(50),
);

var kBorderRadiusProfileRightBottomGrid = BorderRadius.only(
  bottomRight: Radius.circular(50),
);

List<String> myList = [];
