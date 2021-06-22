import 'package:flutter/material.dart';

class FireworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: CircleAvatar(
        backgroundImage: NetworkImage(
          "https://images.pexels.com/photos/5344846/pexels-photo-5344846.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=50l0",
        ),
        radius: 170,
      ),
    );
  }
}
