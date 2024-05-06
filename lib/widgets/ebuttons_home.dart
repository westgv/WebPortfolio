import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/home_buttons.dart';

import '../constants/colors.dart';

class EbuttonHome extends StatelessWidget {
  const EbuttonHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: 
        homeButtons.map((e) => Column(
            children: [
              Padding(
                    padding: const EdgeInsets.all(12),
                    child: SizedBox(
                      width: 200,
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
                            
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.scaffoldBg,
                          )),
                        ),
                      ),
                    ),
                  ),],),).toList(),
        // [
          // homeButtons.map((e) => ,)
          // Column(
          //   children: [
          //     Padding(
          //           padding: const EdgeInsets.all(12),
          //           child: SizedBox(
          //             width: 200,
          //             child: ElevatedButton(
          //               style: ButtonStyle(
          //                 shape: MaterialStatePropertyAll(
          //                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          //                 )
          //               ) ,
          //               onPressed: () {},
          //               child: Padding(
          //                 padding: const EdgeInsets.all(6.0),
          //                 child: Text(homeButtons[i], style: const TextStyle(
                            
          //                   fontSize: 20,
          //                   fontWeight: FontWeight.w500,
          //                   color: CustomColor.scaffoldBg,
          //                 )),
          //               ),
          //             ),
          //           ),
          //         ),
          //         if (( i + 1) % 2 == 0 && i != homeButtons.length - 1)
          //           const SizedBox(height: 10,),  
          //   ],
          // ),
            
        // ],
        ),
    );
  }
}