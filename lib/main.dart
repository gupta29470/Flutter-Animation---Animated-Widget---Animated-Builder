import 'package:flutter/material.dart';

import './screens/animation_screen_3_animated_widget_animation_builder(optimised).dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: AnimationScreen(),
    );
  }
}