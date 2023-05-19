// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:resumeportfolio/units/appColors.dart';

import 'package:resumeportfolio/widgets/AppBar/Navigation/Navigation.dart';
import 'package:resumeportfolio/widgets/AppBar/Sign.dart';

class DrawerDetails extends StatefulWidget {
  const DrawerDetails({super.key});

  @override
  State<DrawerDetails> createState() => _DrawerDetailsState();
}

class _DrawerDetailsState extends State<DrawerDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Drawer(
        backgroundColor: AppColors.rd3,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20),
          children: [
            Column(
              children: const [Sign(), navigationDetails()],
            ),
          ],
        ),
      ),
    );
  }
}
