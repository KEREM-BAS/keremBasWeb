// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kerembas/config/themeColor.dart';
import 'package:kerembas/screens/HomePage.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key, int? pages}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  double opacity = 0;

  @override
  void initState() {
    super.initState();
    if (pages == 0) {
      changeOpacity();
    } else {
      opacity = 0;
    }
  }

  changeOpacity() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        opacity = 1;
        changeOpacity();
        if (pages == 0) {
          changeOpacity();
        } else {
          opacity = 0;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: color1,
      child: AnimatedOpacity(
        duration: Duration(seconds: 2),
        opacity: opacity,
        child: Center(
          child: Text(
            "Page 1",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
