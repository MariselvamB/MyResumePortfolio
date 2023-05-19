// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:resumeportfolio/units/appColors.dart';
import 'package:resumeportfolio/units/appString.dart';
import 'package:resumeportfolio/widgets/Custom_button.dart';

import 'package:resumeportfolio/widgets/responsive_Widgets.dart';

class navigationDetails extends StatefulWidget {
  const navigationDetails({super.key});

  @override
  State<navigationDetails> createState() => _navigationDetailsState();
}

class _navigationDetailsState extends State<navigationDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveWidget.isLargescreen(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  Onpressed: () {},
                  text: AppStrings.txt6,
                  color: AppColors.bk1,
                ),
                CustomButton(
                  Onpressed: () {},
                  text: AppStrings.txt7,
                  color: AppColors.bk1,
                ),
                CustomButton(
                  Onpressed: () {},
                  text: AppStrings.txt8,
                  color: AppColors.bk1,
                ),
                CustomButton(
                  Onpressed: () {},
                  text: AppStrings.txt9,
                  color: AppColors.bk1,
                ),
                CustomButton(
                  Onpressed: () {
                    setState(() {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => socialNavigations(),
                      //     ));
                    });
                  },
                  text: AppStrings.txt10,
                  color: AppColors.bk1,
                ),
              ],
            )
          : Container(),
    );
  }
}
