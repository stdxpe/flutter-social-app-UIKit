import 'package:flutter/material.dart';
import 'package:social_media_demo_app/constants.dart';
import 'package:social_media_demo_app/models/list.dart';

class S08 extends StatelessWidget {
  static const routeID = 'S08';
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: BottomNavBarStandart(),
      //BottomNavBar(),
      backgroundColor: kGreyBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        //SvgPicture.asset('assets/icons/back.svg'),
        toolbarHeight: kDefaultMargin * 3,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black87, fontSize: 25),
        ),
        elevation: 5,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView.separated(
          itemCount: myPostList.length,
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.black26,
              thickness: 0.6,
            );
          },
          itemBuilder: (context, index) {
            if (index < 3) {
              return NotificationPacket(
                index: index,
                isNew: true,
              );
            } else {
              return NotificationPacket(
                index: index,
              );
            }
          },
        ),
      ),
    );
  }
}

class NotificationPacket extends StatelessWidget {
  final bool isNew;
  final int index;
  NotificationPacket({this.isNew = false, this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: kDefaultMargin),
      color: isNew ? kPrimaryColor.withOpacity(0.25) : Colors.white,
      height: size.height / 10,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: kPrimaryColor,
              radius: 30,
            ),
            SizedBox(
              width: kDefaultMargin,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${myPostList[index].userName} liked your photo!',
                    style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15,
                      //letterSpacing: 0.3,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '8 November',
                    style: TextStyle(color: Colors.black54, fontSize: 11),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
