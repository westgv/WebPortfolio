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
                height: screenHeight /2,
                constraints: const BoxConstraints(minHeight: 350.0, maxWidth: 300),
                width: double.maxFinite,
                color: Colors.blueGrey,
                child:  Center(
                  child:  Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox( child: Text('Hello,',  style: TextStyle(
                              fontSize: 60
                            ),
                            ),
                            ),
                            SizedBox(width: 650,),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            SizedBox(width: 300, child:  Text('Welcome to my web portfolio, I am currently a Computer Science student at Instituto Mauá de Tecnologia, expected to be completed in dez/2027\n', textAlign: TextAlign.justify, style: TextStyle(
                              fontSize: 25
                            ),
                            ),),
                            SizedBox(width: 200,),
                            SizedBox(width: 300,child: Text('I am a technology enthusiast willing to showcase creativity and efficiency in my works', textAlign: TextAlign.justify,style: TextStyle(
                              fontSize: 25
                            ),
                            ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: 
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          
                          backgroundColor: CustomColor.yellowPrimary,
                        ) ,
                        onPressed: () {},
                        child: const Padding(
                          padding:  EdgeInsets.all(6.0),
                          child: Text('Download CV', style:  TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.scaffoldBg,
                          )),
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
              );
  }
}