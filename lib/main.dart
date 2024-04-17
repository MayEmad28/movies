import 'package:flutter/material.dart';
import 'package:movies_app/home_teb/home_tab.dart';
import 'theme/my_theme.dart';
import 'home.dart';
import 'splash_screen/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: splash_screen.routeName,
      routes: {
        home.routeName:(context)=>home(),
        home_tab.routeName:(context)=>home_tab(),
        splash_screen.routeName:(context)=>splash_screen()
      },
      theme: my_theme.mode,

    );
  }

}

