import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/ebuttons_home.dart';

import '../constants/colors.dart';

class MainDesktop extends StatefulWidget {
  const MainDesktop({super.key});

  @override
  State<MainDesktop> createState() => _MainDesktopState();
}

class _MainDesktopState extends State<MainDesktop> {
  final mainKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      key: mainKey,
      constraints: const BoxConstraints(minHeight: 350.0, maxWidth: 300),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 80,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'print("Gustavo Westermann")\n',
                              style: TextStyle(
                                  fontSize: 15, color: CustomColor.yellowPrimary)),
                          TextSpan(text: 'Gustavo\n'),
                          TextSpan(text: 'Westermann'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const EbuttonHome(),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(122, 200, 201, 206), 
                        spreadRadius: 5, 
                        blurRadius: 224.95,
                        offset: Offset(
                            0, 3), 
                      )
                    ],
                  ),
                  child: Image.asset(
                    "assets/ImageCircle.png",
                    width: screenWidth / 3,
                  ),
                ),
              ],
            ),
          ),
         
        ],
      ),
      
      
    );
  }
}
