import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/constants.dart';
import 'package:flutter_portfolio/widgets/custom_animated_gradeint_widget.dart';
import 'package:flutter_portfolio/view/home/home.dart';
import 'package:flutter_portfolio/view/splash/widgets/animated_loading_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HoverAnimatedContainer(
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/drawer_image.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            const AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
