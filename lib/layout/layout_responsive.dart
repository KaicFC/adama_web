import 'package:adama_web/screens/mobile_screen.dart';
import 'package:adama_web/screens/high_height_screen.dart';
import 'package:adama_web/screens/web_screen.dart';
import 'package:adama_web/screens/low_height_screen.dart';
import 'package:adama_web/screens/mid_heigth_screen.dart';
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
        bool isLowWidth = widthScreen < 820 ? true : false;

        if (heightScreen < 350) {
          return LowHeigthScreen(isLowWidth: isLowWidth);
        } else if (heightScreen < 460) {
          return MidHeigthScreen(isLowWidth: isLowWidth);
        } else if (heightScreen < 600) {
          return HighHeightScreen(isLowWidth: isLowWidth);
        } else if (widthScreen < 650) {
          return MobileScreen();
        } else if (heightScreen > widthScreen) {
          return MobileScreen();
        } else {
          return WebScreen();
        }
      }),
    );
  }
}
