// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:resumeportfolio/responsive_Widgets.dart';
import 'package:resumeportfolio/units/appColors.dart';
import 'package:resumeportfolio/widgets/Nav_Header.dart';
import 'package:resumeportfolio/widgets/Profile_Info.dart';
import 'package:resumeportfolio/widgets/Social_Info.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      Largescreen: Scaffold(
        backgroundColor: AppColors.rd1,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.rd1,
        ),
        drawer: ResponsiveWidget.isSmallscreen(context)
            ? Drawer(
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [],
                ),
              )
            : null,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: AnimatedPadding(
              duration: const Duration(seconds: 1),
              padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
              child: ResponsiveWidget(
                  Largescreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const navHeader(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  const profileInfo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  const socialInfo(),
                ],
              ))),
        ),
      ),
    );
  }
}
