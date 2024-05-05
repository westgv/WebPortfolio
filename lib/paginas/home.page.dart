import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/main_desktop.dart';
import '../constants/colors.dart';
import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;


    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold (
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth?null : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAIN
              if(constraints.maxWidth>= kMinDesktopWidth)
                const HeaderDesktop() 
              else
               HeaderMobile(
                onLogoTap: () {},
                onMenuTap: (){
                  scaffoldKey.currentState?.openEndDrawer();
                },
               ),

              const MainDesktop(),


              // SKILLS
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // PROJECTS
              Container(
                height: 500,
                width: double.maxFinite,
                
              ),
              //CONTACT
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
                
              ),
            ],
          ),
        );
      }
    );
  }
}