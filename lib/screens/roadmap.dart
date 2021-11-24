import 'package:flutter/material.dart';
import 'package:rp_project/routes.dart';
import 'package:rp_project/widgets/clickable_card.dart';
import 'package:rp_project/widgets/nav-drawer.dart';

class RoadmapScreen extends StatelessWidget {
  final mockData = [
    {"title": "React Basico", "icon": Icons.circle_outlined},
    {"title": "React Intermediario", "icon": Icons.check_circle_outline},
    {"title": "React Avancado", "icon": Icons.lock_outline},
  ];

  void _gotoRoadmap(context) {
    Navigator.of(context).pushNamed(Routes.topico);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Topicos - React Intermediario')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClickableCardWidget(
            title: 'Introducao ao React',
            sufixWidget: Icon(Icons.check_circle_outline),
            onTap: () => _gotoRoadmap(context),
          ),
          ClickableCardWidget(
            title: 'Conhecendo os React Hooks',
            sufixWidget: Icon(Icons.circle_outlined),
            onTap: () => _gotoRoadmap(context),
          ),
          ClickableCardWidget(
            title: 'Conhecendo o redux',
            sufixWidget: Icon(Icons.lock_outline),
            onTap: () => _gotoRoadmap(context),
          ),
        ],
      ),
    );
  }
}
