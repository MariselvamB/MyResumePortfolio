// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:resumeportfolio/units/appColors.dart';

class AppClass {
  static Offset pointer = const Offset(300, 300);

  static bool isInfoHovering = false;
  static bool isTwitterHovering = false;
  static bool isGithubHovering = false;
  static bool isCodePenHovering = false;
  static bool isLinkedinHovering = false;
  static bool isLogoHovering = false;

  static int mainItemHover = 0;

  static GlobalKey widgetKey = GlobalKey();
  static final globalKey = GlobalKey<ScaffoldState>();

  static late Offset widgetOffset;
  static double opacity = 0;
  static late ScrollController scrollController;

  static List allSlides = [
    {'widget': Widget, 'selected': false},
    {'widget': Widget, 'selected': false},
    {'widget': Widget, 'selected': false},
  ];
}

class ProjectDetails {
  final int id;
  final String title;
  final String projectImage;

  ProjectDetails(this.id, this.title, this.projectImage);
}

List<ProjectDetails> projectDetailsList = [
  ProjectDetails(
    1,
    "BMI calculator",
    "assets/Bmi_Calculator.jpg",
  ),
  ProjectDetails(
    2,
    "calculator",
    "assets/calculatorImage.png",
  ),
  ProjectDetails(
    3,
    "tic tac toe",
    "assets/tic tac toe game lmage.png",
  ),
];

class Indicator extends StatelessWidget {
  final isActive;
  const Indicator({
    Key? key,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: isActive ? 15 : 8,
      height: isActive ? 15 : 8,
      decoration: BoxDecoration(
          color: isActive ? AppColors.wt1 : AppColors.rd3,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
