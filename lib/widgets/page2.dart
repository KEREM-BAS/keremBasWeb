import 'package:flutter/material.dart';
import 'package:kerembas/config/themeColor.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: color1,
      child: Center(
        child: Text("Page 2"),
      ),
    );
  }
}
