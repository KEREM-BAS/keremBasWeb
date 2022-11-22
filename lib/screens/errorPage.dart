// ignore_for_file: prefer_const_constructors

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kerembas/config/themeColor.dart';
import 'package:lottie/lottie.dart';

class ErrorPage extends StatefulWidget {
  ErrorPage({Key? key}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

double x = 0.0;
double y = 0.0;

class _ErrorPageState extends State<ErrorPage> {
  late ConfettiController _controllerCenter;
  @override
  void initState() {
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: InkWell(
        onTap: () {
          _controllerCenter.play();
        },
        child: Container(
          height: height,
          width: width,
          color: Colors.black,
          child: Stack(
            children: [
              Center(
                child: Lottie.asset(
                  "assets/404.json",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConfettiWidget(
                    minBlastForce: 1,
                    confettiController: _controllerCenter,
                    blastDirectionality: BlastDirectionality.explosive,
                    colors: const [
                      Colors.blue,
                      Colors.pink,
                      Colors.white,
                    ],
                  ),
                  ConfettiWidget(
                    minBlastForce: 1,
                    confettiController: _controllerCenter,
                    blastDirectionality: BlastDirectionality.explosive,
                    colors: const [
                      Colors.blue,
                      Colors.pink,
                      Colors.white,
                    ],
                  ),
                  ConfettiWidget(
                    minBlastForce: 1,
                    confettiController: _controllerCenter,
                    blastDirectionality: BlastDirectionality.explosive,
                    colors: const [
                      Colors.blue,
                      Colors.pink,
                      Colors.white,
                    ],
                  ),
                  ConfettiWidget(
                    minBlastForce: 1,
                    confettiController: _controllerCenter,
                    blastDirectionality: BlastDirectionality.explosive,
                    colors: const [
                      Colors.blue,
                      Colors.pink,
                      Colors.white,
                    ],
                  ),
                  ConfettiWidget(
                    minBlastForce: 1,
                    confettiController: _controllerCenter,
                    blastDirectionality: BlastDirectionality.explosive,
                    colors: const [
                      Colors.blue,
                      Colors.pink,
                      Colors.white,
                    ],
                  ),
                  ConfettiWidget(
                    minBlastForce: 1,
                    confettiController: _controllerCenter,
                    blastDirectionality: BlastDirectionality.explosive,
                    colors: const [
                      Colors.blue,
                      Colors.pink,
                      Colors.white,
                    ],
                  ),
                ],
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.restorablePopAndPushNamed(context, "/");
                  },
                  child: Text(
                    "Back to home",
                    style: GoogleFonts.anton(
                      color: red,
                      fontSize: 45,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
