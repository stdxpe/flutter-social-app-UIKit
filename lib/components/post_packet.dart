import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media_demo_app/models/list.dart';
import '../constants.dart';

class PostPacket extends StatelessWidget {
  final int index;
  final Function onTap;
  const PostPacket({Key key, this.index, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(
          top: kDefaultMargin,
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              //trailing: Icon(Icons.details),
              dense: true,
              title: Text(
                myPostList[index].userName,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    letterSpacing: 0.4),
              ),
              subtitle: Text(
                '8 November',
                style: TextStyle(color: Colors.black54, fontSize: 11),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  myPostList[index].postUrl,
                ),
                maxRadius: 20,
                minRadius: 20,
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.4),
                child: Text(
                  myPostList[index].postText,
                  style: TextStyle(letterSpacing: 0.03),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Hero(
              tag: myPostList[index].id,
              child: Container(
                //height: size.height / 3.5,
                width: double.infinity,
                child: InteractiveViewer(
                  child: Image.asset(
                    myPostList[index].postUrl,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment(0, -1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('163'),
                  SizedBox(
                    width: kDefaultPadding * 0.2,
                  ),
                  Container(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        'assets/icons/bubble-icon.svg',
                      )),
                  SizedBox(
                    width: kDefaultPadding * 0.5,
                  ),
                  Text('942'),
                  SizedBox(
                    width: kDefaultPadding * 0.2,
                  ),
                  Container(
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        'assets/icons/heart-icon.svg',
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
