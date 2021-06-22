import 'package:flutter/material.dart';

class RotationalTransition extends StatelessWidget {
  final Animation<double> angle;
  final Widget child;

  RotationalTransition({required this.angle, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: angle,
      child: child,
      builder: (context, child) {
        return Transform.rotate(
          angle: angle.value,
          child: child,
        );
      },
    );
  }
}