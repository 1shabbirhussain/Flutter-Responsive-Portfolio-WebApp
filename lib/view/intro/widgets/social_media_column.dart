import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/custom_animated_gradeint_widget.dart';
import 'package:flutter_portfolio/widgets/social_media_icon_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(icon: 'assets/icons/linkedin.svg',onTap: () => launchUrl(Uri.parse("https://www.linkedin.com/in/shabbir-hussain-445338228")),),
        SocialMediaIcon(icon: 'assets/icons/github.svg',onTap: () => launchUrl(Uri.parse('https://github.com/1shabbirhussain')),),
        SocialMediaIcon(icon: 'assets/icons/whatsaap.svg',onTap: () => launchUrl(Uri.parse('https://wa.me/03478356631'))),
        SocialMediaIcon(icon: 'assets/icons/facebook.svg',onTap: () => launchUrl(Uri.parse('https://www.facebook.com/shabbirhussain.00'))),
        SocialMediaIcon(icon: 'assets/icons/gmail.svg' ,onTap: ()=>launchUrl(Uri.parse('mailto:1shabbirhussain@gmail.com'))),
      ],
    );
  }
}
