import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rp_project/routes.dart';
import 'package:rp_project/screens/addRoadmap.dart';
import 'package:rp_project/screens/roadmap.dart';
import 'package:rp_project/screens/topico.dart';
import 'package:rp_project/screens/perguntasTopico.dart';
import 'package:rp_project/screens/login.dart';
import 'package:rp_project/screens/register.dart';
import 'package:rp_project/screens/splash.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Pet System',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => SplashScreen(),
        Routes.loginScreen: (context) => LoginScreen(),
        Routes.registerScreen: (context) => RegisterScreen(),
        Routes.addRoadmap: (context) => AddRoadmap(),
        Routes.roadmap: (context) => roadmap(),
        Routes.topico: (context) => topico(),
        Routes.perguntasTopico: (context) => perguntasTopico(),
      },
    );
  }
}
