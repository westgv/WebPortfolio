import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/about_desktop.dart';
import 'package:flutter_application_1/widgets/main_desktop.dart';
import 'package:flutter_application_1/widgets/main_mobile.dart';
import 'package:flutter_application_1/widgets/projects_desktop.dart';
import 'package:flutter_application_1/widgets/projects_mobile.dart';
import '../constants/colors.dart';
import '../constants/size.dart';
import '../widgets/about_mobile.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // MAIN
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),
            // SKILLS
            if (constraints.maxWidth >= kMinDesktopWidth)
              const AboutMeDesktop()
            else
              const AboutMeMobile(),
            // PROJECTS
            if (constraints.maxWidth >= kMinDesktopWidth)
              const ProjectsDesktop()
            else
              const ProjectsMobile(),
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
    });
  }
}
