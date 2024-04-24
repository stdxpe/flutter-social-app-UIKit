import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media_demo_app/constants.dart';
import 'package:social_media_demo_app/screens/s04.dart';
import 'package:social_media_demo_app/screens/s05.dart';
import 'package:social_media_demo_app/screens/s06.dart';
import 'package:social_media_demo_app/screens/s07.dart';
import 'package:social_media_demo_app/screens/s08.dart';

class MainPageView extends StatefulWidget {
  static const String routeID = 'MainPageView';

  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  PageController _pageController = PageController(
      //initialPage: 0,
      );

  int selectedIndex = 0;

  void _onPageChanged(page) {
    setState(() {
      selectedIndex = page;
      _pageController.animateToPage(
        page,
        duration: Duration(milliseconds: 200),
        curve: Curves.elasticOut,
      );
    });
  }

  // void _onNavTabChanged(nav) {
  //   _pageController.animateToPage(nav,
  //       duration: Duration(microseconds: 100), curve: Curves.easeIn);
  //   selectedIndex = nav;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        fixedColor: kPrimaryColor,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
        onTap: _onPageChanged,
        items: [
          BottomNavigationBarItem(
            backgroundColor: kGreyBackgroundColor,
            title: Text('__'),
            icon: Container(
                height: 30,
                width: 30,
                child: SvgPicture.asset(
                  'assets/icons/dif/house.svg',
                )),
          ),
          BottomNavigationBarItem(
            title: Text('__'),
            icon: Container(
              height: 30,
              width: 30,
              child: SvgPicture.asset(
                'assets/icons/dif/magnifying-glass.svg',
              ),
            ),
          ),
          BottomNavigationBarItem(
              title: Text('__'),
              icon: Container(
                  height: 35,
                  width: 35,
                  child: SvgPicture.asset(
                    'assets/icons/dif/photo-camera.svg',
                    //fit: BoxFit.contain,
                  ))),
          BottomNavigationBarItem(
              title: Text('__'),
              icon: Container(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset('assets/icons/dif/placeholder.svg'))),
          BottomNavigationBarItem(
              title: Text('__'),
              icon: Container(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset('assets/icons/dif/avatar.svg'))),
        ],
      ),
      body: PageView(
        //TODO: PageView.builder kullanmalıydım.
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          S04(),
          S07(),
          S06(),
          S08(),
          S05(),
        ],
      ),
    );
  }
}
