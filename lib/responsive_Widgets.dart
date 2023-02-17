// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget Largescreen;
  final Widget? Mediumscreen;
  final Widget? Smallscreen;

  const ResponsiveWidget(
      {super.key,
      required this.Largescreen,
      this.Mediumscreen,
      this.Smallscreen});

  static bool isSmallscreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumscreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  static bool isLargescreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints Constraints) {
        if (Constraints.maxWidth > 800) {
          return Largescreen;
        } else if (Constraints.maxWidth < 1200 && Constraints.maxWidth > 800) {
          return Mediumscreen ?? Largescreen;
        } else {
          Smallscreen;
        }
        return const Text("Error");
      },
    );
  }
}
