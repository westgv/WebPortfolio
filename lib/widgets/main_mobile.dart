import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/widgets/ebuttons_home.dart';
import 'package:flutter_application_1/widgets/ebuttons_home_mobile.dart';
import 'package:flutter_application_1/widgets/main_desktop.dart';
import 'package:flutter_application_1/widgets/main_mobile_quatro.dart';
import 'package:flutter_application_1/widgets/quebra_mobile.dart';

import '../constants/colors.dart';

class MainMobile extends StatefulWidget {
  const MainMobile({super.key});

  @override
  State<MainMobile> createState() => _MainMobileState();
}

class _MainMobileState extends State<MainMobile> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints){
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: screenHeight / 1.2,
        constraints: const BoxConstraints(minHeight: 350.0, maxWidth: 300),
        child: constraints.maxWidth <= kMinDesktopWidth ?
          constraints.maxWidth <= kQuebraMobile ? const QuebraMobile() : const SemQuebra() : const SemQuebra(),
      );
  });
  }
}
