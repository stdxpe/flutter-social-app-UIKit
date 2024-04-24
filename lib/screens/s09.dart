import 'package:flutter/material.dart';
import 'package:social_media_demo_app/models/post.dart';

class S09 extends StatelessWidget {
  static const routeID = 'S09';

  final Post post;

  const S09({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        child: Hero(
            tag: post.id,
            child: InteractiveViewer(child: Image.asset(post.postUrl))),
      ),
    );
  }
}
