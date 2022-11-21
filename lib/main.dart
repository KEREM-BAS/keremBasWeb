import 'package:flutter/material.dart';
import 'package:kerembas/screens/HomePage.dart';
import 'package:kerembas/screens/aboutPage.dart';
import 'package:kerembas/screens/errorPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kerem BAŞ',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
      },
      onUnknownRoute: ((settings) => MaterialPageRoute(
            builder: (context) => ErrorPage(),
          )),
    );
  }
}
