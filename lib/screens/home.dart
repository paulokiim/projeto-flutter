import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Scaffold(
      //drawer: SideDrawer(),
      @override
    Size size = MediaQuery.of(context).size;
    return Builder(
      builder: (context) {
        return Column(
          children: <Widget>[
            Container(
              height: size.height * 0.2,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: size.height * 0.2 - 27,
                    decoration: BoxDecoration(color: kPrimaryColor),
                  ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container( 
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding) ,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset  (0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)
                    )
                  ]
                ),
              child: TextField(
                      decoration: InputDecoration(
                        hintText: "Minha evolução",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5)
                        ),
                        enabledBorder: InputBorder.none,w 
                        focusedBorder: InputBorder.none,

                      ),
                    ),
                    ),

              child: Container( 
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      height: 200
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset  (0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.25)
                          )
                        ]
                      ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Level 10: Falta x pontos pro próximo level <br> Pontos: 9999 <br> Quero trocar meus pontos por mimos e presentinhos",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5)
                        ),
                        enabledBorder: InputBorder.none,w 
                        focusedBorder: InputBorder.none,

                      ),
                    ),
                    ),
                    ),

                    
                  )
                ],
              ),
            )
          ],
        );
      }
    );
  }

      buildAppBar(){
        return AppBar(
          elevation: 0,
          leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
          )
        )
      }
}
