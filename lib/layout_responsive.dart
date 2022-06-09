import 'package:adama_web/extra_high_screen.dart';
import 'package:adama_web/extra_low_landscap_screen.dart';
import 'package:adama_web/high_screen.dart';
import 'package:adama_web/low_landscap_screen.dart';
import 'package:adama_web/low_screen.dart';
import 'package:adama_web/mid_landscap_screen.dart';
import 'package:adama_web/mid_screen.dart';
import 'package:flutter/material.dart';

class LayoutResponsive extends StatelessWidget {
  const LayoutResponsive({
    Key? key,
    required this.heightScreen,
    required this.widthScreen,
  }) : super(key: key);

  final double heightScreen;
  final double widthScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (heightScreen < 350) {
          return ExtraLowLandcapScreen();
        } else if (heightScreen < 450) {
          return LowLandscapScreen();
        } else if (heightScreen < 700) {
          return MidLandscapScreen();
        } else if (widthScreen > 1200) {
          return ExtraHighScreen();
        } else if (widthScreen < 1200 && widthScreen > 800) {
          return HighScreen();
        } else if (widthScreen < 800 && widthScreen > 600) {
          return MidScreen();
        } else {
          return LowScreen();
        }
      }),
    );
  }
}
