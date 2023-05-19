import 'package:flutter/material.dart';
import 'package:resumeportfolio/units/AppImages.dart';
import 'package:resumeportfolio/units/appClass.dart';
import 'package:resumeportfolio/units/appColors.dart';
import 'package:resumeportfolio/units/appString.dart';
import 'package:resumeportfolio/widgets/Custom_button.dart';

class SocialAppsIcons extends StatefulWidget {
  const SocialAppsIcons({super.key});

  @override
  State<SocialAppsIcons> createState() => _SocialAppsIconsState();
}

class _SocialAppsIconsState extends State<SocialAppsIcons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAnimatedIcon(
              Onpressed: () {},
              onHover: (v) {
                setState(() {
                  AppClass.mainItemHover = v ? 5 : 0;
                  Colors.black.withRed(v ? 30 : 0);
                });
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: AppClass.mainItemHover == 5 ? 50 : 40,
                width: AppClass.mainItemHover == 5 ? 50 : 40,
                decoration: const BoxDecoration(
                  color: AppColors.bk1,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(
                  AppImages.mail,
                  scale: 2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            CustomAnimatedIcon(
              Onpressed: () {},
              onHover: (v) {
                setState(() {
                  AppClass.mainItemHover = v ? 6 : 0;
                  Colors.black.withRed(v ? 30 : 0);
                });
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: AppClass.mainItemHover == 6 ? 50 : 40,
                width: AppClass.mainItemHover == 6 ? 50 : 40,
                decoration: const BoxDecoration(
                  color: AppColors.bk1,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(
                  AppImages.Instragram,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            CustomAnimatedIcon(
              Onpressed: () {},
              onHover: (v) {
                setState(() {
                  AppClass.mainItemHover = v ? 7 : 0;
                  Colors.black.withRed(v ? 30 : 0);
                });
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: AppClass.mainItemHover == 7 ? 50 : 40,
                width: AppClass.mainItemHover == 7 ? 50 : 40,
                decoration: const BoxDecoration(
                  color: AppColors.bk1,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(
                  AppImages.whatsApp,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            CustomAnimatedIcon(
              Onpressed: () {},
              onHover: (v) {
                setState(() {
                  AppClass.mainItemHover = v ? 8 : 0;
                  Colors.black.withRed(v ? 30 : 0);
                });
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: AppClass.mainItemHover == 8 ? 50 : 40,
                width: AppClass.mainItemHover == 8 ? 50 : 40,
                decoration: const BoxDecoration(
                  color: AppColors.wt1,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(
                  AppImages.githubLogo,
                  fit: BoxFit.cover,
                  scale: .1,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            CustomAnimatedIcon(
              Onpressed: () {
                setState(() {});
              },
              onHover: (v) {
                setState(() {
                  AppClass.mainItemHover = v ? 9 : 0;
                  Colors.black.withRed(v ? 30 : 0);
                });
              },
              child: Container(
                clipBehavior: Clip.hardEdge,
                height: AppClass.mainItemHover == 9 ? 50 : 40,
                width: AppClass.mainItemHover == 9 ? 50 : 40,
                decoration: const BoxDecoration(
                  color: AppColors.bk1,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Image.asset(
                  AppImages.linedin,
                  fit: BoxFit.cover,
                  scale: 3,
                ),
              ),
            ),
          ]),
    );
  }
}

class Rights extends StatefulWidget {
  const Rights({super.key});

  @override
  State<Rights> createState() => _RightsState();
}

class _RightsState extends State<Rights> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        AppStrings.txt11,
        style: TextStyle(
          color: AppColors.bk5,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class EmailId extends StatefulWidget {
  const EmailId({super.key});

  @override
  State<EmailId> createState() => _EmailIdState();
}

class _EmailIdState extends State<EmailId> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.mail,
          color: AppColors.bk5,
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          alignment: Alignment.center,
          child: const Text(
            AppStrings.txt12,
            style: TextStyle(
              color: AppColors.bk5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
