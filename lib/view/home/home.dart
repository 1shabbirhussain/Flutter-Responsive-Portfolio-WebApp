import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/achievements/achievements.dart';
import 'package:flutter_portfolio/view/certifications/certifications.dart';
import 'package:flutter_portfolio/view/intro/introduction.dart';
import 'package:flutter_portfolio/view/main/main_view.dart';
import 'package:flutter_portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  MainView(
      scaffoldKey: scaffoldKey,
      pages: [
      Introduction(scaffoldKey: scaffoldKey),
      ProjectsView(),
      Certifications(),
      Achievements(),
    ]);
  }
}
