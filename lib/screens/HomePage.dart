// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kerembas/config/themeColor.dart';
import 'package:kerembas/widgets/page1.dart';
import 'package:kerembas/widgets/page2.dart';
import 'package:kerembas/widgets/page3.dart';
import 'package:opscroll_web/opscroll_web.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final PageController _pageController = PageController();

double? page = 0.0;
int pages = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: OpscrollWeb(
        floatingButtonSplashColor: Colors.black,
        onTapGesture: () {
          setState(() {
            page = _pageController.page;
            pages = page!.toInt();
          });
        },
        floatingButtonBackgroundColor: color4,
        dropColor: color4,
        isFloatingButtonActive: true,
        isTouchScrollingActive: false,
        pageController: _pageController,
        scrollingAnimationOptions: ScrollingAnimationOptions.Circle,
        scrollSpeed: const Duration(
          milliseconds: 600,
        ),
        onePageChildren: [
          Page1(pages: pages),
          Page2(),
          Page3(),
        ],
      ),
    );
  }
}
