import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          // height: 150.0,
          // width: 300.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            autoplayDuration: Duration(seconds: 5),
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(seconds: 1),
            dotSize: 3.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.topCenter,
            dotVerticalPadding: 50.0,
            dotSpacing: 20,
            showIndicator: true,
            indicatorBgPadding: 5.0,
            images: [
              Container(
                height: size.height,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/photo1.png',
                  fit: BoxFit.cover,
                  alignment: Alignment(0.1, 0),
                ),
              ),
              Container(
                height: size.height,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/photo2.png',
                  fit: BoxFit.cover,
                  alignment: Alignment(0, 0),
                ),
              ),
              Container(
                height: size.height,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/photo3.png',
                  fit: BoxFit.cover,
                  alignment: Alignment(0.3, 0),
                ),
              ),
              Container(
                height: size.height,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/image2.png',
                  fit: BoxFit.cover,
                  alignment: Alignment(0.3, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
