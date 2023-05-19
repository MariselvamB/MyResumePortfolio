// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:resumeportfolio/units/appClass.dart';
import 'package:resumeportfolio/units/appColors.dart';

import 'package:resumeportfolio/widgets/TotalPage.dart';
import 'package:resumeportfolio/widgets/responsive_Widgets.dart';

class profolioDetails extends StatefulWidget {
  const profolioDetails({super.key});

  @override
  State<profolioDetails> createState() => _profolioDetailsState();
}

class _profolioDetailsState extends State<profolioDetails> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.none,
      onHover: (eve) {
        setState(() {
          AppClass.pointer = eve.position;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const ResponsiveWidget(
              Smallscreen: totalPage(),
              Mediumscreen: totalPage(),
              Largescreen: totalPage(),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              left: AppClass.pointer.dx,
              top: AppClass.pointer.dy,
              child: Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: AppColors.rd4,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              left: AppClass.pointer.dx,
              top: AppClass.pointer.dy,
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 60,
                      color: AppColors.rd4,
                    ),
                    BoxShadow(
                      offset: Offset(
                        -15,
                        -20,
                      ),
                      blurRadius: 60,
                      color: AppColors.rd4,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  // border: Border.all(
                  //   width: 1,
                  //   color: AppColors.rd3,
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
