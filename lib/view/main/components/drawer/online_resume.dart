import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OnlineResume extends StatelessWidget {
  const OnlineResume({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton.icon(
        onPressed: () => launchUrl(Uri.parse('https://shabbir-hussain-flutter-developer.my.canva.site')),
        icon: const Icon(Icons.description, color: Colors.white),
        label: const Text(
          "View Online Resume",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}