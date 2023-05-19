// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:resumeportfolio/screens/Home/Social/socia_info.dart';
import 'package:resumeportfolio/units/appColors.dart';

class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        color: AppColors.rd3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            EmailId(),
            Rights(),
            SocialAppsIcons(),
          ],
        ));
  }
}
