import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/url.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({super.key});

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 2,
      
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('FEEDIT\n   APP', style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(86, 255, 255, 255),
                          ),
                        ],
                    ),),
                    Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                      BoxShadow(
                        color: CustomColor.yellowPrimary, 
                        spreadRadius: 5, 
                        blurRadius: 74.95, 
                        offset: Offset(
                            0, 3), 
                      ),
                    ],
                      ),
                      child: Image.asset('dinossauro_verde.png', scale: 1.5,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('More Projects',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),
                  InkWell(
                    onTap: () {
                      launchUrl(
                        Uri.parse('https://github.com/westgv'),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    child: Image.asset('GitHub.png'),
                  )
                ],
              )
            ],
          ),
          
        ],
      ),
      



    );
  }
}