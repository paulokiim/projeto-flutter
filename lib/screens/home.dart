import 'package:flutter/material.dart';
import 'package:rp_project/screens/my-achivements.dart';
import 'package:rp_project/widgets/clickable_card.dart';
import 'package:rp_project/widgets/nav-drawer.dart';

import '../routes.dart';

class HomeScreen extends StatelessWidget {
  /*Widget _goToSidebar(context) {
    Navigator.of(context).pushNamed(Routes.newCustomRoadmapConfigure);
    return Icon(
      Icons.view_sidebar,
    );
  }*/

  /*void _goToMyAchivementsScreen(context) {
    Navigator.of(context).pushNamed(Routes.myAchivementsScreen);
  }*/

  void _goToMyAchivementsScreen(context) {
    Navigator.of(context).pushNamed(Routes.myAchivementsScreen);
  }

  void _goToMyRoadmapsScreen(context) {
    Navigator.of(context).pushNamed(Routes.myRoadmapScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(title: Text('Home')),
      body: Column(children: [
        //vertical space between the appBar and the first thing properly of the page

        /* Row(children: [
          IconButton(
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => myAchivementsScreen),
                );
              }
            icon: Icon(Icons.view_sidebar,),
             ///////////////////////// color: Colors.grey,
              /*highlightColor: Colors.red,
              hoverColor: Colors.green,
              focusColor: Colors.purple,
              splashColor: Colors.yellow,
              disabledColor: Colors.amber,*/
              //size: 48,
              
              // ),
          ),
        ]),*/
        Row(
            //foto do bixo
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*
              ClickableCardWidget(
                title: '',
                sufixWidget: Icon(Icons.check_circle_outline),
                onTap: () => _goToMyRoadmapsScreen(context),
              ),*/
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 2, color: Colors.blueGrey)),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                //child: ElevatedButton(
                // onPressed: () => _gotoMyRoadmapScreen(context),
                child: Text('Minha evolução'),
              ),
            ]),

        /* DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 5.0, color: Colors.white),
                ),
              ),
              Card(
                child: Center(
                  child: Text('Minha evolução'),
                ),
//                title: 'Minha evolução',
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              */
        /* Container(
                width: 200,
                height: 50,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text("Minha evolução"),
                    ),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(500.0),
                          side: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ),
              ),*/
        Padding(
          padding: const EdgeInsets.all(15),
          //child: ElevatedButton(
          // onPressed: () => _gotoMyRoadmapScreen(context),
          child: Text('Nível 8'),
        ),

        /*Container(
          width: 200,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Column(
              children: [
                Center(child: Text("Level 8")),
                Center(child: Text("Faltam x pontos para o 9")),
              ],
            ),
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(5),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(500.0),
                  side: BorderSide(color: Colors.red),
                ),
              ),
            ),
          ),
        ),*/

        SizedBox(
          width: 25,
          height: 45,
        ),

        Card(
          child: Column(children: [
            Text(
              "Meus últimos roadmaps",
              style: TextStyle(fontSize: 19),
            ),
            SizedBox(
              width: 25,
              height: 25,
            ),
            Row(children: [
              //width: 200,
              //height: 100,

              SizedBox(
                width: 5,
                height: 0,
              ),

              Column(
                children: [
                  //child: Center(
                  Center(child: Text("React Básico")),
                  Center(child: Text("------------------------")),
                  Center(child: Text("Completo 34%")),
                  Center(child: Text("Última vez: ontem")),
                ],
              ),

              SizedBox(
                width: 20,
                height: 0,
              ),

              Card(
                //width: 150,
                //height: 100,
                child: Column(
                  children: [
                    //child: Center(
                    Center(child: Text("Educação Financeira")),
                    Center(child: Text("-----------------------")),
                    Center(child: Text("Completo 71%")),
                    Center(child: Text("Última vez: ontem")),
                  ],
                ),
              ),
            ]),
            Center(
              child: ClickableCardWidget(
                title: 'Ver tudo',
                onTap: () => _goToMyRoadmapsScreen(context),
              ),
            ),
          ]),
        ),

        Card(
          child: Column(children: [
            Text(
              'Minhas conquistas',
              style: TextStyle(fontSize: 19),
            ),
            SizedBox(
              width: 0,
              height: 30,
            ),
            Row(children: [
              SizedBox(
                width: 100,
                height: 0,
              ),
              Column(
                children: [Icon(Icons.add_circle_outline_outlined), Text('#1')],
              ),
              SizedBox(
                width: 110,
                height: 0,
              ),
              Column(
                children: [Icon(Icons.add_circle_outline_outlined), Text('#2')],
              ),
              SizedBox(
                width: 50,
                height: 0,
              ),
              /* Column(
                children: [Icon(Icons.add_circle_outline_outlined), Text('#3')],
              ),*/
            ]),
            SizedBox(
              width: 20,
              height: 0,
            ),
            ClickableCardWidget(
              title: 'Ver tudo',
              onTap: () => _goToMyAchivementsScreen(context),
            ),
          ]),
        ),
      ]),
    );
  }
}
