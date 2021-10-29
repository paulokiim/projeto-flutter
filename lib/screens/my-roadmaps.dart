import 'package:flutter/material.dart';
import 'package:rp_project/widgets/clickable_card.dart';
import 'package:rp_project/widgets/header.dart';
import 'package:rp_project/widgets/roadmap-progress.dart';

class MyRoadmapsScreen extends StatelessWidget {
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
            sufixWidget: RoadmapProgressWidget(
              progress: '10%',
              checkpoint: 'Ontem',
            ),
          ),
          ClickableCardWidget(
            title: 'React Avançado',
            sufixWidget: RoadmapProgressWidget(
              progress: '25%',
              checkpoint: '27/10/2021',
            ),
          ),
          ClickableCardWidget(
            title: 'Adicionar um novo roadmap',
            prefixWidget: Icon(Icons.add_circle_outline_outlined),
            sufixWidget: SizedBox(),
            description: 'Bora começar mais uma trilha?',
          ),
          ClickableCardWidget(
            title: 'Criar roadmap customizado',
            prefixWidget: Icon(Icons.add_circle_outline_outlined),
            sufixWidget: SizedBox(),
            description: 'Bora começar mais uma trilha?',
          ),
        ],
      ),
    );
  }
}
