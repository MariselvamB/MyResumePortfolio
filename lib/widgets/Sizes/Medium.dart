// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:resumeportfolio/screens/Home/Logo/LogoHeader.dart';
import 'package:resumeportfolio/screens/Home/Social/socialNavigations.dart';
import 'package:resumeportfolio/screens/Home/profile/Profile_Info.dart';
import 'package:resumeportfolio/units/appColors.dart';

class Mediumscreen extends StatefulWidget {
  const Mediumscreen({super.key});

  @override
  State<Mediumscreen> createState() => _MediumscreenState();
}

class _MediumscreenState extends State<Mediumscreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const LogoHeader(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        const profileInfo(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const socialNavigations(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Divider(
          height: 2,
          color: AppColors.rd3,
        ),
      ],
    );
  }
}
