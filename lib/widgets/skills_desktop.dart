import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillsDesktop extends StatefulWidget {
  const SkillsDesktop({super.key});

  @override
  State<SkillsDesktop> createState() => _SkillsDesktopState();
}

class _SkillsDesktopState extends State<SkillsDesktop> {
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 1.0,
                center: Image.asset('python.png'),
                progressColor: CustomColor.yellowPrimary,
              ),
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 1.0,
                center: Image.asset('java.png'),
                progressColor: CustomColor.yellowPrimary,
              ),
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 1.0,
                center: Image.asset('flutter.png'),
                progressColor: CustomColor.yellowPrimary,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 1.0,
                center: Image.asset('html.png'),
                progressColor: CustomColor.yellowPrimary,
              ),
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 1.0,
                center: Image.asset('css.png'),
                progressColor: CustomColor.yellowPrimary,
              ),
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 1.0,
                center: Image.asset('javascript.png'),
                progressColor: CustomColor.yellowPrimary,
              )
            ],
          )
        ],
      ),




    );
  }
}