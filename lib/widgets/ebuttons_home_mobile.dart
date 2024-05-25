import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/home_buttons.dart';

import '../constants/colors.dart';

class EbuttonHomeMobile extends StatelessWidget {
  const EbuttonHomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 250),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: 
        homeButtons.map((e) => Column(
            children: [
              Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: 
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          
                          backgroundColor: CustomColor.yellowPrimary,
                        ) ,
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(e, style: const TextStyle(
                            
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.scaffoldBg,
                          )),
                        ),
                      ),
                    ),
                  ),],),).toList(),

        ),
    );
  }
}