import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0, maxWidth: 300),
      
      width: double.maxFinite,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Row(
                      
                      children: [
                        
                        Text(
                          'Hello ',
                          style: TextStyle(fontSize: 60,),
                        ),
                        Icon(
                          Icons.waving_hand_rounded,
                          color: CustomColor.yellowPrimary,
                          size: 50,
                        )
                      ],
                    ),
                  ),
                 
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      'Welcome to my web portfolio, I am currently a Computer Science student at Instituto Mauá de Tecnologia, expected to be completed in dez/2027\n',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      'I am a technology enthusiast willing to showcase creativity and efficiency in my works',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text('Download CV',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.scaffoldBg,
                      )),
                ),
              ),
              const SizedBox(height: 16,),
              const Spacer(),
               Align(
                 alignment: Alignment.bottomCenter,
                 child: Column(
                   children: [
                     const Text('See Projects', style: TextStyle(
                       fontSize: 70,
                       fontWeight: FontWeight.w800,
                       shadows: [
                         Shadow(
                           offset: Offset(2.0, 2.0),
                               blurRadius: 1.0,
                               color: Color.fromARGB(86, 255, 255, 255),
                         )
                       ]
                     ),),
                     Image.asset('setas.png', scale: 2.5,)
                   ],
                 ),
               )
            ],
            
          ),
          
        ),
      ),
    );
  }
}
