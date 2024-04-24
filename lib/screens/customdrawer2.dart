import 'package:flutter/material.dart';
import 'dart:math';
import 's05.dart';

class CustomDrawer2 extends StatefulWidget {
  static const routeID = 'CustomDrawer2';

  static _CustomDrawer2State of(BuildContext context) =>
      context.findAncestorStateOfType<_CustomDrawer2State>();

  @override
  _CustomDrawer2State createState() => _CustomDrawer2State();
}

class _CustomDrawer2State extends State<CustomDrawer2>
    with SingleTickerProviderStateMixin {
  static const double minDragStartEdge = 60;
  static const double maxDragStartEdge = maxSlide - 16;
  AnimationController _animationController;
  bool _canBeDragged = false;
  static const double maxSlide = 300.0;
  static const Duration toggleDuration = Duration(milliseconds: 225);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      // vsync: this,
      duration: _CustomDrawer2State.toggleDuration,
    );
  }

  void close() => _animationController.reverse();

  void open() => _animationController.forward();

  void toggleDrawer() => _animationController.isCompleted ? close() : open();

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //double maxSlide2 = size.width * 0.90;
    var myDrawer = Container(color: Colors.blue);
    //var myChild = Container(color: Colors.yellow);

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: WillPopScope(
        onWillPop: () async {
          if (_animationController.isCompleted) {
            close();
            return false;
          }
          return true;
        },
        child: GestureDetector(
          onHorizontalDragStart: _onDragStart,
          onHorizontalDragUpdate: _onDragUpdate,
          onHorizontalDragEnd: _onDragEnd,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              double animValue = _animationController.value;
              return Stack(
                children: [
                  Transform.translate(
                    offset: Offset((maxSlide) * (animValue - 1), 0),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(pi / 2 * (1 - animValue)),
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: _animationController.isCompleted ? close : null,
                        child: Container(
                          //height: 500,
                          width: maxSlide,
                          child: myDrawer,
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(maxSlide * animValue, 0),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateY(-pi * animValue / 2),
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: _animationController.isCompleted ? close : null,
                        child: S05(),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = _animationController.isDismissed &&
        details.globalPosition.dx < minDragStartEdge;
    bool isDragCloseFromRight = _animationController.isCompleted &&
        details.globalPosition.dx > maxDragStartEdge;

    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta / maxSlide;
      _animationController.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    //I have no idea what it means, copied from Drawer
    double _kMinFlingVelocity = 365.0;

    if (_animationController.isDismissed || _animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= _kMinFlingVelocity) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      _animationController.fling(velocity: visualVelocity);
    } else if (_animationController.value < 0.5) {
      close();
    } else {
      open();
    }
  }
}
