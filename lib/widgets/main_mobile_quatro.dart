import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'ebuttons_home_mobile.dart';

class SemQuebra extends StatelessWidget {
  const SemQuebra({super.key});

  @override
  Widget build(BuildContext context) {
     final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Row(
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
                        width: screenWidth / 4,
                        )
              
                
            ),
            
          ],
        );
  }
  
}