import 'package:flutter/material.dart';
import 'package:rp_project/widgets/clickable_card.dart';
import 'package:rp_project/widgets/header.dart';

class RoadmapScreen extends StatelessWidget {
  final mockData = [
    {"title": "React Basico", "icon": Icons.circle_outlined},
    {"title": "React Intermediario", "icon": Icons.check_circle_outline},
    {"title": "React Avancado", "icon": Icons.lock_outline},
  ];

  void _gotoRoadmap(context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeaderWidget(
            title: 'Meus Roadmaps',
          ),
          ClickableCardWidget(
            title: 'React Basico',
            sufixWidget: Icon(Icons.check_circle_outline),
            onTap: () => _gotoRoadmap(context),
          ),
          ClickableCardWidget(
            title: 'React Intermediario',
            sufixWidget: Icon(Icons.circle_outlined),
            onTap: () => _gotoRoadmap(context),
          ),
          ClickableCardWidget(
            title: 'React Avançado',
            sufixWidget: Icon(Icons.lock_outline),
            onTap: () => _gotoRoadmap(context),
          ),
        ],
      ),
    );
  }
}
