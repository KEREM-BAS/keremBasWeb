import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
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
        ConfettiController(duration: const Duration(seconds: 2));
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
            ],
          ),
        ),
      ),
    );
  }
}
