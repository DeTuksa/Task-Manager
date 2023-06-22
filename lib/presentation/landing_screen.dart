import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/app_images.dart';
import 'package:task_manager/core/constants/theme/tm_theme.dart';
import 'package:task_manager/core/extensions/padding_extension.dart';
import 'package:task_manager/core/helpers/presentation_helpers.dart';
import 'package:task_manager/presentation/widgets/project_card.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          50.ph,
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: TMTheme.theme.colorScheme.onBackground,
                ),
                Icon(
                  Icons.account_circle,
                  size: 40,
                  color: TMTheme.theme.colorScheme.onBackground,
                )
              ],
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Hello Rohan!',
                    style: TextStyle(
                      color: Color(0xFF2E3A59),
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Opacity(
                    opacity: 0.54,
                    child: Text(
                      'Have a nice day.',
                      style: TextStyle(
                        color: Color(0xFF2E3A59),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 32,),
                  ProjectCard()
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: PresentationHelper().buildSVGAsset(asset: TMImages.home, width: 30),
            label: ""
          ),
          BottomNavigationBarItem(
              icon: PresentationHelper().buildSVGAsset(asset: TMImages.calendar, width: 30),
            label: ""
          ),
          BottomNavigationBarItem(
              icon: PresentationHelper().buildSVGAsset(asset: TMImages.notification, width: 30),
            label: ""
          ),
          BottomNavigationBarItem(
              icon: PresentationHelper().buildSVGAsset(asset: TMImages.search, width: 30),
            label: ""
          ),
        ],
      ),
    );
  }
}
