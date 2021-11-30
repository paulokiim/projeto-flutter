import 'package:flutter/material.dart';
import 'package:rp_project/routes.dart';

class RoadmapConclusionScreen extends StatelessWidget {
  const RoadmapConclusionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conclusao - React Intermediario'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.person),
                        ),
                        Text('Bom Trabalho!'),
                        Text('Jaja voce vai estar muito bom nisso!')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('Pontuação Total'),
                    Text('Voce conseguiu 1 Ponto')
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('1/1'),
                )
              ],
            ),
            Container(
              width: 300,
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("assets/icons/achivement.png"),
                    ),
                    Text('Nova conquista alcançada')
                  ],
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Continuar'),
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(Routes.myRoadmapScreen),
            )
          ],
        ),
      ),
    );
  }
}
