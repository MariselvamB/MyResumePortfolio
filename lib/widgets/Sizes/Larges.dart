// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:resumeportfolio/screens/Home/Logo/LogoHeader.dart';
import 'package:resumeportfolio/screens/Home/ProjectsList/ProjectsList.dart';
import 'package:resumeportfolio/screens/Home/Social/socialNavigations.dart';
import 'package:resumeportfolio/screens/Home/profile/Profile_Info.dart';
import 'package:resumeportfolio/widgets/Custom_button.dart';

class Largescreen extends StatefulWidget {
  const Largescreen({super.key});

  @override
  State<Largescreen> createState() => _LargescreenState();
}

class _LargescreenState extends State<Largescreen> {
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
        const ProjectsList(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const Customdivider(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const Customdivider(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const Customdivider(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const socialNavigations(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const Customdivider(),
      ],
    );
  }
}
