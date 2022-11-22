// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:kerembas/config/themeColor.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import 'dart:js' as js;

class WorksPage extends StatefulWidget {
  WorksPage({Key? key}) : super(key: key);

  @override
  State<WorksPage> createState() => _WorksPageState();
}

late ScrollController _scrollController;

class _WorksPageState extends State<WorksPage> {
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double textsize = MediaQuery.of(context).size.height / 7;
    return Scaffold(
      backgroundColor: Colors.black,
      body: WebSmoothScroll(
        scrollOffset: 200,
        controller: _scrollController,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          controller: _scrollController,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width / 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    //1.
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedPadding(
                        child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              _updatePadding1(padValue1 == 0.0 ? 100.0 : 0.0);
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _updatePadding1(padValue1 == 100 ? 0.0 : 100.0);
                            });
                          },
                          child: HoverWidget(
                            hoverChild: InkWell(
                              onTap: () {
                                js.context.callMethod("open", [
                                  "https://github.com/KEREM-BAS/Flutter-AI"
                                ]);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Vision AI",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.anton(
                                        fontSize: textsize,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Object recognition App",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.anton(
                                        fontSize: textsize / 6.5, color: red),
                                  ),
                                ],
                              ),
                            ),
                            onHover: (PointerEnterEvent event) {
                              setState(() {
                                selected1 = !selected1;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Vision AI",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.anton(
                                      fontSize: textsize, color: Colors.white),
                                ),
                                Text(
                                  "Object recognition App",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.anton(
                                      fontSize: textsize / 6.5, color: red),
                                ),
                              ],
                            ),
                          ),
                        ),
                        padding: EdgeInsets.only(left: padValue1),
                        duration: Duration(milliseconds: 300),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width / 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    //2.
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedPadding(
                        child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              _updatePadding2(padValue2 == 0.0 ? 100.0 : 0.0);
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _updatePadding2(padValue2 == 100 ? 0.0 : 100.0);
                            });
                          },
                          child: HoverWidget(
                            hoverChild: InkWell(
                              onTap: () {
                                js.context.callMethod("open", [
                                  "https://github.com/KEREM-BAS/Flutter-dashboard"
                                ]);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dashboard",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.anton(
                                        fontSize: textsize,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Panel showing health information",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.anton(
                                        fontSize: textsize / 6.5, color: red),
                                  ),
                                ],
                              ),
                            ),
                            onHover: (PointerEnterEvent event) {
                              setState(() {
                                selected2 = !selected2;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dashboard",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.anton(
                                      fontSize: textsize, color: Colors.white),
                                ),
                                Text(
                                  "Panel showing health information",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.anton(
                                      fontSize: textsize / 6.5, color: red),
                                ),
                              ],
                            ),
                          ),
                        ),
                        padding: EdgeInsets.only(left: padValue2),
                        duration: Duration(milliseconds: 300),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double padValue1 = 0.0;
  double padValue2 = 0.0;
  double padValue3 = 0.0;

  void _updatePadding1(double value) {
    setState(() {
      padValue1 = value;
    });
  }

  void _updatePadding2(double value) {
    setState(() {
      padValue2 = value;
    });
  }

  void _updatePadding3(double value) {
    setState(() {
      padValue3 = value;
    });
  }

  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
}
