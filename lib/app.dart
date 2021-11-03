import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rp_project/routes.dart';
import 'package:rp_project/screens/home.dart';
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
      debugShowCheckedModeBanner: true,
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => SplashScreen(),
        Routes.loginScreen: (context) => LoginScreen(),
        Routes.registerScreen: (context) => RegisterScreen(),
        Routes.homeScreen: (context) => HomeScreen(),
      },
    );
  }
}
