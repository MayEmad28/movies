import 'package:flutter/material.dart';
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
        splash_screen.routeName:(context)=>splash_screen()
      },
      theme: my_theme.mode,

    );
  }

}

