// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:resumeportfolio/screens/Home/Social/socia_info.dart';
import 'package:resumeportfolio/units/appClass.dart';
import 'package:resumeportfolio/units/appString.dart';
import 'package:resumeportfolio/widgets/Custom_button.dart';
import 'package:resumeportfolio/widgets/responsive_Widgets.dart';
import 'package:resumeportfolio/units/appColors.dart';

class profileInfo extends StatefulWidget {
  const profileInfo({super.key});

  @override
  State<profileInfo> createState() => _profileInfoState();
}

class _profileInfoState extends State<profileInfo> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      Largescreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          profileImage(context),
          const ProfileData(),
        ],
      ),
      Mediumscreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          profileImage(context),
          const ProfileData(),
        ],
      ),
      Smallscreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          const ProfileData(),
        ],
      ),
    );
  }
}

class profileImage extends StatefulWidget {
  const profileImage(BuildContext context, {super.key});

  @override
  State<profileImage> createState() => _profileImageState();
}

class _profileImageState extends State<profileImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedContainer(
          clipBehavior: Clip.hardEdge,
          duration: const Duration(seconds: 1),
          height: ResponsiveWidget.isSmallscreen(context)
              ? MediaQuery.of(context).size.height * 0.8
              : MediaQuery.of(context).size.height * 0.8,
          width: ResponsiveWidget.isSmallscreen(context)
              ? MediaQuery.of(context).size.width * 0.7
              : MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.luminosity,
            color: AppColors.td1,
            border: Border.all(color: AppColors.rd3, width: 10),
            borderRadius: const BorderRadius.all(Radius.circular(1000)),
            boxShadow: [
              BoxShadow(
                blurRadius: 60,
                color: AppColors.rd3,
              ),
            ],
            image: const DecorationImage(
                image: AssetImage("Maari.jpg"),
                alignment: Alignment.center,
                fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}

class ProfileData extends StatefulWidget {
  const ProfileData({super.key});

  @override
  State<ProfileData> createState() => _ProfileDataState();
}

class _ProfileDataState extends State<ProfileData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomAnimatedText(
          Onpressed: () {},
          onHover: (v) {
            setState(() {
              AppClass.mainItemHover = v ? 1 : 0;
              Colors.black.withRed(v ? 30 : 0);
            });
          },
          child: AnimatedDefaultTextStyle(
            textAlign: TextAlign.center,
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
                color:
                    AppClass.mainItemHover == 1 ? AppColors.wt1 : AppColors.rd3,
                fontWeight: FontWeight.w900,
                fontSize: (AppClass.mainItemHover == 1 ? 30 : 25)),
            child: const Text(
              AppStrings.txt1,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        CustomAnimatedText(
          Onpressed: () {},
          onHover: (v) {
            setState(() {
              AppClass.mainItemHover = v ? 2 : 0;
              Colors.black.withRed(v ? 30 : 0);
            });
          },
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
                color:
                    AppClass.mainItemHover == 2 ? AppColors.rd3 : AppColors.wt1,
                fontWeight: FontWeight.w900,
                fontSize: (AppClass.mainItemHover == 2 ? 55 : 50)),
            child: const Text(
              AppStrings.txt2,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        CustomAnimatedText(
          Onpressed: () {},
          onHover: (v) {
            setState(() {
              AppClass.mainItemHover = v ? 3 : 0;
              Colors.black.withRed(v ? 30 : 0);
            });
          },
          child: AnimatedDefaultTextStyle(
            textAlign: TextAlign.center,
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
                color:
                    AppClass.mainItemHover == 3 ? AppColors.wt1 : AppColors.rd3,
                fontWeight: FontWeight.w900,
                fontSize: (AppClass.mainItemHover == 3 ? 25 : 20)),
            child: const Text(
              AppStrings.txt3,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomAnimatedText(
              Onpressed: () {},
              onHover: (v) {
                setState(() {
                  AppClass.mainItemHover = v ? 10 : 0;
                  Colors.black.withRed(v ? 30 : 0);
                });
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColors.rd3,
                  boxShadow: const [BoxShadow(blurRadius: 5)],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: AppColors.bk1,
                  ),
                ),
                child: Text(
                  AppStrings.txt4,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppClass.mainItemHover == 10 ? 25 : 20,
                    color: AppColors.bk1,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            const SocialAppsIcons(),
          ],
        )
      ],
    );
  }
}
