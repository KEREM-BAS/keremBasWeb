// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:kerembas/config/themeColor.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double textsize = MediaQuery.of(context).size.height / 7;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.black,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width / 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedPadding(
                    child: MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          _updatePadding1(padValue1 == 0.0 ? 50.0 : 0.0);
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          _updatePadding1(padValue1 == 50 ? 0.0 : 50.0);
                        });
                      },
                      child: HoverWidget(
                        hoverChild: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/about");
                          },
                          child: Text(
                            "About",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.anton(
                                fontSize: textsize, color: Colors.white),
                          ),
                        ),
                        onHover: (PointerEnterEvent event) {
                          setState(() {
                            selected1 = !selected1;
                          });
                        },
                        child: AnimatedTextKit(
                          totalRepeatCount: 1,
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "Hello.",
                              speed: const Duration(milliseconds: 100),
                              textAlign: TextAlign.start,
                              textStyle: GoogleFonts.anton(
                                fontSize: textsize,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(left: padValue1),
                    duration: Duration(
                      milliseconds: 300,
                    ),
                  ),
                  AnimatedPadding(
                    child: MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          _updatePadding2(padValue2 == 0.0 ? 50.0 : 0.0);
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          _updatePadding2(padValue2 == 50 ? 0.0 : 50.0);
                        });
                      },
                      child: HoverWidget(
                        hoverChild: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/works");
                          },
                          child: Text(
                            "Work",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.anton(
                                fontSize: textsize, color: red),
                          ),
                        ),
                        onHover: (PointerEnterEvent event) {
                          setState(() {
                            selected2 = !selected2;
                          });
                        },
                        child: AnimatedTextKit(
                          totalRepeatCount: 1,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "I am",
                              speed: const Duration(milliseconds: 100),
                              textAlign: TextAlign.start,
                              textStyle: GoogleFonts.anton(
                                fontSize: textsize,
                                color: red,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(left: padValue2),
                    duration: Duration(
                      milliseconds: 300,
                    ),
                  ),
                  AnimatedPadding(
                    child: MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          _updatePadding3(padValue3 == 0.0 ? 50.0 : 0.0);
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          _updatePadding3(padValue3 == 50 ? 0.0 : 50.0);
                        });
                      },
                      child: HoverWidget(
                        hoverChild: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/about");
                          },
                          child: Text(
                            "Contact",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.anton(
                                fontSize: textsize, color: red),
                          ),
                        ),
                        onHover: (PointerEnterEvent event) {
                          setState(() {
                            selected2 = !selected2;
                          });
                        },
                        child: AnimatedTextKit(
                          totalRepeatCount: 1,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "Kerem",
                              speed: const Duration(milliseconds: 100),
                              textAlign: TextAlign.start,
                              textStyle: GoogleFonts.anton(
                                fontSize: textsize,
                                color: red,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(left: padValue3),
                    duration: Duration(
                      milliseconds: 300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
