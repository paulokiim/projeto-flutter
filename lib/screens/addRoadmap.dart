import 'package:flutter/material.dart';
import 'package:rp_project/routes.dart';
import 'package:rp_project/widgets/clickable_card.dart';

class AddRoadmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Roadmap'),
      ),
      body: ListaRoadmaps(),
    );
  }
}

class ListaRoadmaps extends StatelessWidget {
  void _gotoRoadmapScreen(context) {
    Navigator.of(context).pushNamed(Routes.roadmapTopicScreen);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ClickableCardWidget(
          title: 'React Básico',
          sufixWidget: Icon(Icons.add_circle_outline_outlined),
          onTap: () => _gotoRoadmapScreen(context),
        ),
        ClickableCardWidget(
          title: 'React Intermediario',
          sufixWidget: Icon(Icons.add_circle_outline_outlined),
          onTap: () => _gotoRoadmapScreen(context),
        ),
        ClickableCardWidget(
          title: 'React Avançado',
          sufixWidget: Icon(Icons.add_circle_outline_outlined),
          onTap: () => _gotoRoadmapScreen(context),
        ),
      ],
    );
  }
}
