import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight /1.2,
      constraints: const BoxConstraints(minHeight: 350.0,),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary, 
                    
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Hello,\n', style: TextStyle(fontSize: 35)),
                    TextSpan(text: 'Welcome to my web\n'),
                    TextSpan(text: 'portfolio, I am currently a\n'),
                    TextSpan(text: 'Computer Science student\n'),
                    TextSpan(text: 'at Instituto Mauá de\n'),
                    TextSpan(text: 'Tecnologia, expected to be\n'),
                    TextSpan(text: 'completed in dez/2027'),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                width: 240,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.yellowPrimary
                  ),
                  onPressed: () {},
                  
                  child: const Text("Download CV", style: TextStyle(
                    color: CustomColor.scaffoldBg,
                  )),
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: CustomColor.whiteSecondary, // Cor da sombra
                  spreadRadius: 5, // Raio de propagação da sombra
                  blurRadius: 284.95, // Raio de desfoque da sombra
                  offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                )
              ]
            ),
            child: Image.asset("assets/ImageCircle.png",
            width: screenWidth / 3,),
          ),
        ],
      ),
    );
  }
}