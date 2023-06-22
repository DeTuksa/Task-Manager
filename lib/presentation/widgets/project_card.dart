import 'package:flutter/material.dart';
import 'package:task_manager/core/constants/app_images.dart';
import 'package:task_manager/core/helpers/presentation_helpers.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 250,
                height: 250,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 250,
                        height: 250,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.05, -1.00),
                            end: Alignment(-0.05, 1),
                            colors: [Color(0xFF9C2CF3), Color(0xFF3A48F8)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0.16,
                      child: SizedBox(
                        width: 250,
                        height: 250,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 250,
                                height: 250,
                                decoration: ShapeDecoration(
                                  // color: const Color(0xFFEC703C),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: -100,
                              top: 120,
                              child: Opacity(
                                opacity: 0.10,
                                child: Container(
                                  width: 250,
                                  height: 250,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF242736),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 100,
                              top: -120,
                              child: Opacity(
                                opacity: 0.08,
                                child: Container(
                                  width: 250,
                                  height: 250,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFF242736),
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 250, width: 250,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x28000000),
                    blurRadius: 24,
                    offset: Offset(0, 12),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: PresentationHelper().buildSVGAsset(asset: TMImages.projectIcon),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Project 1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Front-End Development',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'October 20, 2020',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
