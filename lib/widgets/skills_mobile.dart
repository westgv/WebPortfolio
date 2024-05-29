import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillsMobile extends StatefulWidget {
  const SkillsMobile({super.key});

  @override
  State<SkillsMobile> createState() => _SkillsMobileState();
}

class _SkillsMobileState extends State<SkillsMobile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
          const Text(
            "SKILLS",
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.w800,
              shadows: [
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(86, 255, 255, 255),
                ),
              ],
            ),
          ),
          screenWidth <= kMinDesktopWidth?
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    RotationTransition(
                      turns: _controller,
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        rotateLinearGradient: true,
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Image.asset(
                          'python.png',
                          scale: 1.5,
                        ),
                        linearGradient: const LinearGradient(colors: <Color>[
                          CustomColor.yellowSecondary,
                          CustomColor.yellowPrimary,
                          CustomColor.yellowSecondary
                        ]),
                      ),
                    ),
                    const Text(
                      "Intermediate",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Column(
                  children: [
                    RotationTransition(
                      turns: _controller,
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Image.asset('java.png'),
                        rotateLinearGradient: true,
                        linearGradient: const LinearGradient(colors: <Color>[
                          CustomColor.yellowSecondary,
                          CustomColor.yellowPrimary,
                          CustomColor.yellowSecondary
                        ]),
                      ),
                    ),
                    const Text(
                      "Intermediate",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Column(
                  children: [
                    RotationTransition(
                      turns: _controller,
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Image.asset(
                          'flutter.png',
                          scale: 1.5,
                        ),
                        rotateLinearGradient: true,
                        linearGradient: const LinearGradient(colors: <Color>[
                          CustomColor.yellowSecondary,
                          CustomColor.yellowPrimary,
                          CustomColor.yellowSecondary
                        ]),
                      ),
                    ),
                    const Text(
                      "Intermediate",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ) :
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    RotationTransition(
                      turns: _controller,
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        rotateLinearGradient: true,
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Image.asset(
                          'python.png',
                          scale: 1.5,
                        ),
                        linearGradient: const LinearGradient(colors: <Color>[
                          CustomColor.yellowSecondary,
                          CustomColor.yellowPrimary,
                          CustomColor.yellowSecondary
                        ]),
                      ),
                    ),
                    const Text(
                      "Intermediate",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Column(
                  children: [
                    RotationTransition(
                      turns: _controller,
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Image.asset('java.png'),
                        rotateLinearGradient: true,
                        linearGradient: const LinearGradient(colors: <Color>[
                          CustomColor.yellowSecondary,
                          CustomColor.yellowPrimary,
                          CustomColor.yellowSecondary
                        ]),
                      ),
                    ),
                    const Text(
                      "Intermediate",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Column(
                  children: [
                    RotationTransition(
                      turns: _controller,
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Image.asset(
                          'flutter.png',
                          scale: 1.5,
                        ),
                        rotateLinearGradient: true,
                        linearGradient: const LinearGradient(colors: <Color>[
                          CustomColor.yellowSecondary,
                          CustomColor.yellowPrimary,
                          CustomColor.yellowSecondary
                        ]),
                      ),
                    ),
                    const Text(
                      "Intermediate",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          screenWidth <= kMinDesktopWidth?
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    RotationTransition(
                      turns: _controller,
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        rotateLinearGradient: true,
                        linearGradient: const LinearGradient(colors: <Color>[
                          CustomColor.yellowSecondary,
                          CustomColor.yellowPrimary,
                          CustomColor.yellowSecondary
                        ]),
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Image.asset(
                          'html.png',
                          scale: 1.5,
                        ),
                        // progressColor: CustomColor.yellowPrimary,
                      ),
                    ),
                    const Text(
                      "Intermediário",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Column(
                  children: [
                    RotationTransition(
                      turns: _controller,
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        backgroundColor: Colors.transparent,
                        rotateLinearGradient: true,
                        linearGradient: const LinearGradient(colors: <Color>[
                          CustomColor.yellowSecondary,
                          CustomColor.yellowPrimary,
                          CustomColor.yellowSecondary
                        ]),
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Image.asset(
                          'css.png',
                          scale: 1.5,
                        ),
                      ),
                    ),
                    const Text(
                      "Intermediate",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Column(
                  children: [
                    RotationTransition(
                      turns: _controller,
                      child: CircularPercentIndicator(
                        radius: 45.0,
                        linearGradient: const LinearGradient(colors: <Color>[
                          CustomColor.yellowSecondary,
                          CustomColor.yellowPrimary,
                          CustomColor.yellowSecondary
                        ]),
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Image.asset(
                          'javascript.png',
                          scale: 1.5,
                        ),
                        rotateLinearGradient: true,
                      ),
                    ),
                    const Text(
                      "Intermediate",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ) :
            Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  RotationTransition(
                    turns: _controller,
                    child: CircularPercentIndicator(
                      radius: 45.0,
                      rotateLinearGradient: true,
                      linearGradient: const LinearGradient(colors: <Color>[
                        CustomColor.yellowSecondary,
                        CustomColor.yellowPrimary,
                        CustomColor.yellowSecondary
                      ]),
                      lineWidth: 5.0,
                      percent: 1.0,
                      center: Image.asset(
                        'html.png',
                        scale: 1.5,
                      ),
                      // progressColor: CustomColor.yellowPrimary,
                    ),
                  ),
                  const Text(
                    "Intermediário",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Column(
                children: [
                  RotationTransition(
                    turns: _controller,
                    child: CircularPercentIndicator(
                      radius: 45.0,
                      backgroundColor: Colors.transparent,
                      rotateLinearGradient: true,
                      linearGradient: const LinearGradient(colors: <Color>[
                        CustomColor.yellowSecondary,
                        CustomColor.yellowPrimary,
                        CustomColor.yellowSecondary
                      ]),
                      lineWidth: 5.0,
                      percent: 1.0,
                      center: Image.asset(
                        'css.png',
                        scale: 1.5,
                      ),
                    ),
                  ),
                  const Text(
                    "Intermediate",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Column(
                children: [
                  RotationTransition(
                    turns: _controller,
                    child: CircularPercentIndicator(
                      radius: 45.0,
                      linearGradient: const LinearGradient(colors: <Color>[
                        CustomColor.yellowSecondary,
                        CustomColor.yellowPrimary,
                        CustomColor.yellowSecondary
                      ]),
                      lineWidth: 5.0,
                      percent: 1.0,
                      center: Image.asset(
                        'javascript.png',
                        scale: 1.5,
                      ),
                      rotateLinearGradient: true,
                    ),
                  ),
                  const Text(
                    "Intermediate",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
