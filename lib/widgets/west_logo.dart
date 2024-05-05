import 'package:flutter/material.dart';

class WestLogo extends StatelessWidget {
  const WestLogo({super.key, this.onTap,});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Image.asset("assets/logo_west.png")
              );
  }
}