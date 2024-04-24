import 'package:flutter/material.dart';
import 'package:social_media_demo_app/components/post_packet.dart';
import 'package:social_media_demo_app/constants.dart';
import 'package:social_media_demo_app/models/list.dart';
import 'package:social_media_demo_app/screens/s09.dart';

class S04 extends StatelessWidget {
  static const routeID = 'S04';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kGreyBackgroundColor,
        centerTitle: true,
        title: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.easeInOutQuad,
          child: Icon(
            Icons.all_inclusive,
            color: kPrimaryColor,
            size: 50,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: myPostList.length,
        itemBuilder: (context, index) {
          return PostPacket(
              index: index,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => S09(post: myPostList[index]),
                  ),
                );
              });
        },
      ),
    );
  }
}
