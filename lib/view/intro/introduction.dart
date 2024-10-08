import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/widgets/intro_body.dart';
import 'package:flutter_portfolio/view/intro/widgets/social_media_list.dart';
class Introduction extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const Introduction({super.key, required this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          if (!Responsive.isMobile(context)) SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          // if (!Responsive.isLargeMobile(context))  MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
          if (!Responsive.isMobile(context)) SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.02,
          ),
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          if (!Responsive.isMobile(context)) SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.07,
          ),
           Expanded(
            child: IntroBody(scaffoldKey: scaffoldKey,),
          ),
        ],
      ),
    );
  }
}



