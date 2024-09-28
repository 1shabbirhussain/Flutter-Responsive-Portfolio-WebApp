import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/achievements_controller.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../view model/responsive.dart';
import 'components/achievements_grid.dart';

class Achievements extends StatelessWidget {
  final controller=Get.put(AchievementsController());
   Achievements({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'Achievements & ', title: 'Memberships'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: AchievementsGrid(crossAxisCount: 3,),
                  extraLargeScreen: AchievementsGrid(crossAxisCount: 4,ratio: 1.4),
                  largeMobile: AchievementsGrid(crossAxisCount: 1,ratio: 1.8),
                  mobile: AchievementsGrid(crossAxisCount: 1,ratio: 1.5),
                  tablet: AchievementsGrid(ratio: 1.4,crossAxisCount: 2,)))
        ],
      ),
    );
  }
}










