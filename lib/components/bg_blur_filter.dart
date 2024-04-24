import 'dart:ui';
import 'package:flutter/material.dart';

class BGBlurFilter extends StatelessWidget {
  final double _sigmaX = 20.0; // from 0-10
  final double _sigmaY = 20.0; // from 0-10
  final double _opacity = 0.3; // from 0-1.0

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: _sigmaX,
          sigmaY: _sigmaY,
        ),
        child: Container(
          color: Colors.black54.withOpacity(_opacity),
        ),
      ),
    );
  }
}
