import 'package:flutter/material.dart';
import 'package:social_media_demo_app/components/categories_bar.dart';
import 'package:social_media_demo_app/components/seach_text_field.dart';
import 'package:social_media_demo_app/constants.dart';
import 'package:social_media_demo_app/models/list.dart';

class S07 extends StatelessWidget {
  static const routeID = 'S07';

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor.withOpacity(0.2),
      // bottomNavigationBar: BottomNavBarStandart(),
      //BottomNavBar(),
      body: Container(
        margin: EdgeInsets.only(top: kDefaultMargin * 2.6),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchTextField(),
            SizedBox(
              height: kDefaultMargin * 2,
            ),
            CategoriesBar(),
            SizedBox(
              height: kDefaultMargin,
            ),
            TwoLinesOfText(),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(kDefaultMargin),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(discoverCategories.length, (index) {
                    return Container(
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        discoverCategories[index].categoryImage,
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TwoLinesOfText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.2),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Find out',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            'what\'s trending in the world right now!',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
