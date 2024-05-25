import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/widgets/ebuttons_home.dart';
import 'package:flutter_application_1/widgets/ebuttons_home_mobile.dart';

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
        height: screenHeight / 2,
        constraints: const BoxConstraints(minHeight: 350.0, maxWidth: 300),
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
                      fontSize: 40,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'print("Gustavo Westermann")\n',
                          style: TextStyle(
                              fontSize: 10, color: CustomColor.yellowPrimary)),
                      TextSpan(text: 'Gustavo\n'),
                      TextSpan(text: 'Westermann'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const EbuttonHomeMobile(),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(122, 200, 201, 206), // Cor da sombra
                    spreadRadius: 5, // Raio de propagação da sombra
                    blurRadius: 224.95, // Raio de desfoque da sombra
                    offset: Offset(
                        0, 3), // Deslocamento da sombra (horizontal, vertical)
                  )
                ],
              ),
              child: Image.asset(
                    "assets/bola_main.png",
                    width: screenWidth / 4,
                    )
              
                
            ),
          ],
        ),
      );
  });
  }
}
