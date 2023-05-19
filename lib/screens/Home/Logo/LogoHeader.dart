// ignore_for_file: file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resumeportfolio/screens/Home/Logo/logo.dart';
import 'package:resumeportfolio/widgets/responsive_Widgets.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      Largescreen: Row(
        mainAxisAlignment: ResponsiveWidget.isLargescreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          logo(),
        ],
      ),
      Mediumscreen: Column(
        mainAxisAlignment: ResponsiveWidget.isMediumscreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: const [
              logo(),
            ],
          ),
        ],
      ),
      Smallscreen: Column(
        mainAxisAlignment: ResponsiveWidget.isSmallscreen(context)
            ? MainAxisAlignment.start
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          logo(),
        ],
      ),
    );
  }
}
