import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
   const NavigationButtonList({super.key, required this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    return  TweenAnimationBuilder(tween: Tween(begin: 0.0,end: 1.0), duration: const Duration(milliseconds: 200), builder: (context, value, child) {
      return Transform.scale(
        scale: value,
        child: Row(
          children: [
            NavigationTextButton(onTap: () {controller.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'About Me'),
            NavigationTextButton(onTap: () {controller.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Projects'),
            NavigationTextButton(onTap: () {controller.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Certifications'),
            NavigationTextButton(onTap: () {controller.animateToPage(3, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Achievements'),
            if(!Responsive.isLargeMobile(context)) 
            NavigationTextButton(onTap: () {scaffoldKey.currentState?.openDrawer();},text: 'Contact',
            ),
          ],
        ),
      );
    },);
  }
}