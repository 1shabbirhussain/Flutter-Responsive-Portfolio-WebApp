import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(child: Text("Worked on",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
        ),
        KnowledgeText(knowledge: 'Dart, Flutter'),
        KnowledgeText(knowledge: 'Firebase, MySQL'),
        KnowledgeText(knowledge: 'Rest API, Postman'),
        KnowledgeText(knowledge: 'Dockers'),
        KnowledgeText(knowledge: 'Trello, Jira, Notion'),
        KnowledgeText(knowledge: 'Git, GitHub CLI, GitHub Desktop'),
        KnowledgeText(knowledge: 'GitLab, BitBucket'),
        KnowledgeText(knowledge: 'Java Script, Python'),
        KnowledgeText(knowledge: 'HTML5, CSS, Bootstrap'),
      ],
    );
  }

}
