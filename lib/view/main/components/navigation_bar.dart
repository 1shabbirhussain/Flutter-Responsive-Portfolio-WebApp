import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/widgets/side_menu_button.dart';
import 'package:flutter_portfolio/view/main/components/connect_button.dart';
import '../../../constants/constants.dart';
import 'navigation_button_list.dart';
class TopNavigationBar extends StatelessWidget {
    final GlobalKey<ScaffoldState> scaffoldKey;

  const TopNavigationBar({super.key, required this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: MenuButton(onTap: () => Scaffold.of(context).openDrawer(),),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(flex: 2,),
          if(!Responsive.isLargeMobile(context))   NavigationButtonList(scaffoldKey: scaffoldKey,),
          const Spacer(flex: 2,),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
