// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:resumeportfolio/screens/Home/Drawer.dart';
import 'package:resumeportfolio/units/appColors.dart';
import 'package:resumeportfolio/widgets/AppBar/Navigation/Navigation.dart';

import 'package:resumeportfolio/widgets/AppBar/Sign.dart';
import 'package:resumeportfolio/widgets/Sizes/Larges.dart';
import 'package:resumeportfolio/widgets/Sizes/Medium.dart';
import 'package:resumeportfolio/widgets/Sizes/Small.dart';
import 'package:resumeportfolio/widgets/responsive_Widgets.dart';

class totalPage extends StatefulWidget {
  const totalPage({super.key});

  @override
  State<totalPage> createState() => _totalPageState();
}

class _totalPageState extends State<totalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bk4,
      appBar: AppBar(
        elevation: 10,
        title: const Padding(
          padding: EdgeInsets.all(20),
          child: Sign(),
        ),
        actions: const [
          ResponsiveWidget(
            Largescreen: navigationDetails(),
            Mediumscreen: navigationDetails(),
            Smallscreen: navigationDetails(),
          )
        ],
        backgroundColor: AppColors.rd3,
      ),
      endDrawer: ResponsiveWidget.isSmallscreen(context)
          ? const DrawerDetails()
          : null,
      body: SingleChildScrollView(
        child: AnimatedPadding(
            duration: const Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.06),
            child: const ResponsiveWidget(
              Largescreen: Largescreen(),
              Mediumscreen: Mediumscreen(),
              Smallscreen: Smallscreen(),
            )),
      ),
    );
  }
}
