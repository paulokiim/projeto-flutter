import 'package:flutter/material.dart';
import 'package:rp_project/widgets/bagde.dart';
import 'package:rp_project/widgets/clickable_card.dart';
import 'package:rp_project/widgets/header.dart';

class MyAchivementsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        HeaderWidget(
          title: 'Minhas Conquistas',
        ),
        ClickableCardWidget(
          title: 'Hello, Roadmap',
          type: "Achivement",
          prefixWidget: Icon(Icons.add_circle_outline_outlined),
          achivementInfo: [
            'Hello, Roadmap',
            "Comecei a seguir meu primeiro roadmap no aplicativo"
          ],
        ),
        ClickableCardWidget(
          title: 'Eu faço meu caminho!',
          type: "Achivement",
          prefixWidget: Icon(Icons.add_circle_outline_outlined),
          achivementInfo: [
            "Eu faço meu caminho!",
            "Criei meu primeiro roadmap personalizado"
          ],
        ),
        ClickableCardWidget(
          title: 'Conquista não alcançada ainda',
          sufixWidget: Icon(Icons.lock_outline),
        ),
        ClickableCardWidget(
          title: 'Conquista não alcançada ainda',
          sufixWidget: Icon(Icons.lock_outline),
        ),
      ]),
    );
  }
}
