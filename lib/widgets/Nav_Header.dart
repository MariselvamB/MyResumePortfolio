// ignore_for_file: file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resumeportfolio/responsive_Widgets.dart';
import 'package:resumeportfolio/widgets/NavButton.dart';
import 'package:resumeportfolio/widgets/PKDot.dart';

class navHeader extends StatelessWidget {
  const navHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      Largescreen: Row(
        mainAxisAlignment: ResponsiveWidget.isLargescreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const PKDot(),
          if (ResponsiveWidget.isSmallscreen(context))
            Row(
              children: [
                NavButton(
                  Onpressed: () {},
                  text: const Text("About"),
                ),
                NavButton(
                  Onpressed: () {},
                  text: const Text("Work"),
                ),
                NavButton(
                  Onpressed: () {},
                  text: const Text("Contact"),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
