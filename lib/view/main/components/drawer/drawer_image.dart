import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/custom_animated_gradeint_widget.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return HoverAnimatedContainer(
      width: 100,
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
            'assets/images/drawer_image.jpeg',fit: BoxFit.cover,),
      ),
    );
  }
}
