import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/constants.dart';
import 'drawer_image.dart';
class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        color:  bgColor,
        child: Column(
          children: [
            const Spacer(flex: 2,),
            const DrawerImage(),
            const Spacer(),
            Text('Shabbir Hussain',style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: defaultPadding/4,),
            const Text('Software Engineer | Certified Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5
              ),),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
