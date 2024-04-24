import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media_demo_app/constants.dart';

class BottomNavBarStandart extends StatefulWidget {
  @override
  _BottomNavBarStandartState createState() => _BottomNavBarStandartState();
}

class _BottomNavBarStandartState extends State<BottomNavBarStandart> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      fixedColor: kPrimaryColor,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      selectedLabelStyle:
          TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
      onTap: _onItemTapped,
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
                ))),
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
    );
  }
}
