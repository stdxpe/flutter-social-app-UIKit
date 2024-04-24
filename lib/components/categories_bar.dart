import 'package:flutter/material.dart';
import 'package:social_media_demo_app/constants.dart';
import 'package:social_media_demo_app/models/list.dart';

class CategoriesBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      //width: double.infinity,
      margin: EdgeInsets.only(left: kDefaultPadding * 0.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: discoverCategories.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 25),
            margin: EdgeInsets.only(left: 7.5, right: 7.5),
            //margin: EdgeInsets.only(right: 15),
            width: size.width / 3,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      new AssetImage(discoverCategories[index].categoryImage),
                  fit: BoxFit.cover,
                ),
                color: Colors.red,
                borderRadius: kBorderRadiusImage),
            child: Text(
              discoverCategories[index].categoryName,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
