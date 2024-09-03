import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/widgets/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(icon: 'assets/icons/linkedin.svg',onTap: () => launchUrl(Uri.parse("https://www.linkedin.com/in/shabbir-hussain-445338228")),),
        SocialMediaIcon(icon: 'assets/icons/github.svg',onTap: () => launchUrl(Uri.parse('https://github.com/1shabbirhussain')),),
        const SocialMediaIcon(icon: 'assets/icons/dribble.svg',),
        const SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
        SocialMediaIcon(icon: 'assets/icons/gmail.svg' ,onTap: ()=>launchUrl(Uri.parse('mailto:1shabbirhussain@gmail.com'))),
      ],
    );
  }
}
