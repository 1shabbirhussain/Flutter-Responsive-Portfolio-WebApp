import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text("Contact Me",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '+92 347 8356631'),
        AreaInfoText(title: 'Email', text: '001.shabbirhussain@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@shabbir-hussain-445338228'),
        AreaInfoText(title: 'Github', text: '@1shabbirhussain'),
        AreaInfoText(title: 'Facebook', text: '@shabbirhussain.00'),
      ],
    );
  }
}
