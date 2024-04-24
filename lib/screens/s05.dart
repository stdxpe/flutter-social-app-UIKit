import 'package:flutter/material.dart';
import 'package:social_media_demo_app/components/profile_gridview.dart';
import 'package:social_media_demo_app/screens/customdrawer2.dart';
import '../constants.dart';

class S05 extends StatelessWidget {
  static const routeID = 'S05';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // bottomNavigationBar: BottomNavBarStandart(),
      //BottomNavBar(),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: double.infinity,
              child: Image.asset(
                'assets/images/sea_waves.png',
                fit: BoxFit.fitWidth,
                alignment: Alignment(0, -1),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: kDefaultMargin * 3.5),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, CustomDrawer2.routeID);
                      //CustomDrawer();
                    },
                    child: Align(
                      alignment: Alignment(0, -0.8),
                      child: CircleAvatar(
                        backgroundColor: kSecondaryColor,
                        radius: 50,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -0.52),
                    child: Text(
                      'Alexio Morales',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -0.3),
                    child: Text(
                      '128K Followers',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ProfilePost(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(kDefaultMargin),
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Text(
                              'Photos & Videos',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '147 Post',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: ExampleGrid()),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StandartImagePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        width: size.width / 3,
        height: size.width / 3,
        child: Image.asset(
          'assets/images/sea_waves.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ProfilePost extends StatelessWidget {
  final Widget child;
  const ProfilePost({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height / 1.5,
      margin: EdgeInsets.only(
          //top: kDefaultMargin,
          //horizontal: kDefaultPadding * 0.15,
          ),
      decoration: BoxDecoration(
        color: Colors.white,
        //borderRadius: kBorderRadiusProfile,
      ),
      child: child,
    );
  }
}
