import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    double textsize = MediaQuery.of(context).size.width / 18;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedTextKit(
          totalRepeatCount: 1,
          isRepeatingAnimation: false,
          animatedTexts: [
            TypewriterAnimatedText(
              "UNDER CONSTRUCTION",
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
    );
  }
}
