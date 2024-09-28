import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return SizedBox(
          width:Responsive.isDesktop(context)? 600 : 550,
          child: Text(
            "I'm a  Software Engineer, Certified and Experienced FLUTTER DEVELOER, passionate about crafting high-quality mobile, desktop, and web applications. From concept to deployment, I ensure seamless performance and an intuitive user experience. My work covers Android, iOS, web, and desktop platforms, with a strong foundation in UI/UX design",
            overflow: TextOverflow.clip,
            style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
            // textAlign: Responsive.isDesktop(context) ? TextAlign.left,
          ),
        );
      },
    );
  }
}