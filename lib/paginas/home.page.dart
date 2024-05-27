import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/about_desktop.dart';
import 'package:flutter_application_1/widgets/main_desktop.dart';
import 'package:flutter_application_1/widgets/main_mobile.dart';
import 'package:flutter_application_1/widgets/projects_desktop.dart';
import 'package:flutter_application_1/widgets/projects_mobile.dart';
import 'package:flutter_application_1/widgets/skills_desktop.dart';
import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../constants/size.dart';
import '../styles/style.dart';
import '../widgets/about_mobile.dart';
import '../widgets/drawer_mobile.dart';

import '../widgets/header_mobile.dart';
import '../widgets/west_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final mainKey = GlobalKey();
  final projectKey = GlobalKey();
  final skillsKey = GlobalKey();

  Future scrollToMain() async {
    final context = mainKey.currentContext;
    await Scrollable.ensureVisible(context!,
    duration: const Duration(milliseconds: 1500));
  }
  
  Future scrollToProject() async {
    final context = projectKey.currentContext;
    await Scrollable.ensureVisible(context!,
    duration: const Duration(milliseconds: 1500));
  }

  Future scrollToSkills() async{
    final context = skillsKey.currentContext;
     Scrollable.ensureVisible(context!,
    duration: const Duration(milliseconds: 1500));
  }
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
            constraints.maxWidth >= kMinDesktopWidth?
              Container(
                height: 60.0,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                width: double.maxFinite,
                decoration: kHeaderDecoration,
                child: Row(children: [
                  WestLogo(onTap: () {}
                  ),
                  const Spacer(),
                  for(int i=0; i< navTitles.length; i++ )
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                      onPressed: () {
                      switch(i){
                        case 0 :
                          scrollToMain();
                          break;
                        case 1 :
                          scrollToSkills();
                          break;
                        case 2 : 
                          scrollToProject();
                          break;
                        case 3 :
                          scrollToMain();
                          break;
                        default:
                          scrollToMain();
                          break;
                      }
                      },
                      child: Text(navTitles[i], style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary,
                      )),
                    ),
                  )
                ],),
              ) 
              :
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            if (constraints.maxWidth >= kMinDesktopWidth)
               MainDesktop(
                key: mainKey,
              )
            else
              const MainMobile(),
            // SKILLS
            if (constraints.maxWidth >= kMinDesktopWidth)
              const AboutMeDesktop()
            else
              const AboutMeMobile(),
            // PROJECTS
            if (constraints.maxWidth >= kMinDesktopWidth)
               ProjectsDesktop(
                key: projectKey,
              )
            else
              const ProjectsMobile(),
            //CONTACT
            SkillsDesktop(
              key: skillsKey,
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
