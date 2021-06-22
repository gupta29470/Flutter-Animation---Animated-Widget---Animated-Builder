import 'dart:math' as math;
import 'package:flutter/material.dart';

import '../widgets/animation_screen_3_widget_firework_image_container(optimised).dart';
import '../widgets/animation_screen_3_widget_rotation_transition_animated_builder(optimised).dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });

    _animation = Tween<double>(
      begin: 0,
      end: 2 * math.pi,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceIn,
        reverseCurve: Curves.bounceOut,
      ),
    );
    _animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RotationalTransition(
        angle: _animation,
        child: FireworkImage(),
      ),
    );
  }
}
/*
body: ScaleTransition(
        scale: animation
        alignment: Alignment.bottomCenter
        child: FireworkImage(),
      ),
 body: SizeTransition(
        sizeFactor: animation
        child: FireworkImage(),
      ),
body: FadeTransition(
        opacity: animation
        child: FireworkImage(),
      ),
body: RotationTransition(
        turns: animation
        child: FireworkImage(),
      ),

 */
