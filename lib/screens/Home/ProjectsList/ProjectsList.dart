// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:resumeportfolio/units/appClass.dart';
import 'package:resumeportfolio/units/appColors.dart';
import 'package:resumeportfolio/widgets/Custom_button.dart';

class ProjectsList extends StatefulWidget {
  const ProjectsList({super.key});

  @override
  State<ProjectsList> createState() => _ProjectsListState();
}

class _ProjectsListState extends State<ProjectsList> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 450,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            controller: PageController(viewportFraction: 0.7),
            itemCount: projectDetailsList.length,
            itemBuilder: (context, index) {
              var scale = selectedIndex == index ? 1.0 : 0;

              return TweenAnimationBuilder(
                duration: const Duration(milliseconds: 350),
                tween: Tween(begin: scale, end: scale),
                curve: Curves.ease,
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value.toDouble(),
                    child: child,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: AppColors.wt1,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  projectDetailsList[index].projectImage),
                              fit: BoxFit.fill),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomAnimatedText(
                        Onpressed: () {},
                        onHover: (v) {
                          setState(() {
                            AppClass.mainItemHover = v ? 11 : 0;
                            Colors.black.withRed(v ? 30 : 0);
                          });
                        },
                        child: AnimatedDefaultTextStyle(
                          textAlign: TextAlign.center,
                          duration: const Duration(milliseconds: 200),
                          style: TextStyle(
                              color: AppClass.mainItemHover == 11
                                  ? AppColors.wt1
                                  : AppColors.rd3,
                              fontWeight: FontWeight.w900,
                              fontSize:
                                  (AppClass.mainItemHover == 11 ? 25 : 20)),
                          child: Text(
                            projectDetailsList[index].title,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: AppColors.bk1,
                          boxShadow: const [BoxShadow(blurRadius: 5)],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: AppColors.rd3,
                          ),
                        ),
                        child: Text(
                          projectDetailsList[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: AppClass.mainItemHover == 10 ? 25 : 20,
                            color: AppColors.rd3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                projectDetailsList.length,
                (index) =>
                    Indicator(isActive: selectedIndex == index ? true : false))
          ],
        )
      ],
    );
  }
}
