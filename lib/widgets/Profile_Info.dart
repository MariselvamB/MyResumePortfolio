// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:resumeportfolio/responsive_Widgets.dart';
import 'package:resumeportfolio/units/appColors.dart';

class profileInfo extends StatelessWidget {
  profileImage(Context) => AnimatedContainer(
        duration: const Duration(seconds: 1),
        height: ResponsiveWidget.isSmallscreen(Context)
            ? MediaQuery.of(Context).size.height * 0.25
            : MediaQuery.of(Context).size.width * 0.25,
        width: ResponsiveWidget.isSmallscreen(Context)
            ? MediaQuery.of(Context).size.height * 0.25
            : MediaQuery.of(Context).size.width * 0.25,
        decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.luminosity,
            color: AppColors.bu2,
            borderRadius: BorderRadius.circular(40),
            image: const DecorationImage(
                image: AssetImage("assets/Maari.jpg"),
                alignment: Alignment.center,
                fit: BoxFit.cover)),
      );

  const profileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
