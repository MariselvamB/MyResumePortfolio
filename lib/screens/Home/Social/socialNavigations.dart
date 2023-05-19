// ignore: implementation_imports
// ignore_for_file: file_names, implementation_imports, duplicate_ignore, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:resumeportfolio/screens/Home/Social/Social.dart';
import 'package:resumeportfolio/widgets/responsive_Widgets.dart';

class socialNavigations extends StatelessWidget {
  const socialNavigations({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ResponsiveWidget(
        Largescreen: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Social(),
          ],
        ),
        Mediumscreen: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Social(),
          ],
        ),
        Smallscreen: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Social(),
          ],
        ),
      ),
    );
  }
}
