import 'package:flutter/material.dart';
import 'package:rp_project/widgets/card.dart';
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
          CardWidget(
            title: 'React Basico',
            sufixWidget: RoadmapProgressWidget(
              progress: '10%',
              checkpoint: 'Ontem',
            ),
          ),
          CardWidget(
            title: 'React Avançado',
            sufixWidget: RoadmapProgressWidget(
              progress: '25%',
              checkpoint: '27/10/2021',
            ),
          ),
          CardWidget(
            title: 'React Basico',
            sufixWidget: Icon(Icons.lock_outline),
          ),
        ],
      ),
    );
  }
}
