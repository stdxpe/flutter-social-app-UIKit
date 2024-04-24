import 'package:flutter/material.dart';

class AlignmentOgren extends StatelessWidget {
  //static const String routeID = 'S01';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                //margin: EdgeInsets.all(20),
                color: Colors.blue,
                height: size.height / 3,
                width: size.width / 1.1,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
                    height: size.height / 4,
                    width: size.width / 1.3,
                    color: Colors.red,
                    //decoration: BoxDecoration(color: Colors.red),
                    child: Text('Hello'),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: size.height / 4,
                    width: size.width / 1.2,
                    color: Colors.green,
                  ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      height: size.height / 5.5,
                      width: size.width / 1.4,
                      color: Colors.yellowAccent,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Hello'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              FlatButton(
                onPressed: () {
                  print('button pressed');
                },
                child: Container(
                  height: size.height / 13,
                  width: size.width / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30.0)),
                  alignment: Alignment.center,
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
