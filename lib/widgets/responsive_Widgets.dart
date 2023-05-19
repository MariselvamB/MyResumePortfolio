// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget Largescreen;
  final Widget Mediumscreen;
  final Widget Smallscreen;

  const ResponsiveWidget(
      {super.key,
      required this.Largescreen,
      required this.Mediumscreen,
      required this.Smallscreen});

  static bool isSmallscreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumscreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isLargescreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 800) {
          return Largescreen;
        } else if (Constraints.maxWidth > 800 && Constraints.maxWidth < 1200) {
          return Mediumscreen;
        } else {
          return Smallscreen;
        }
      },
    );
  }
}
