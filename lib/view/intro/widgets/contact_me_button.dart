import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants/constants.dart';

class ContactMeButton extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const ContactMeButton({super.key, required this.scaffoldKey});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       scaffoldKey.currentState?.openDrawer();
      },
      child: Container(
        width: 220,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: defaultPadding/1.5,horizontal: defaultPadding*2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            boxShadow:const [
              BoxShadow(color: Colors.blue,offset: Offset(0, -1),blurRadius: 5),
              BoxShadow(color: Colors.red,offset: Offset(0, 1),blurRadius: 5),
            ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.pink,
                Colors.blue.shade900,
              ]),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contact Me',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: defaultPadding/3,),
            const Icon(FontAwesomeIcons.user,color: Colors.white70,size: 15,)

          ],
        ),
      ),
    );
  }
}