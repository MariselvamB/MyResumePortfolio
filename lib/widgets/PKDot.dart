// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:resumeportfolio/units/appColors.dart';

class PKDot extends StatelessWidget {
  const PKDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "PK",
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: const Duration(
            seconds: 1,
          ),
          height: 8,
          width: 8,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: AppColors.bu1),
        )
      ],
    );
  }
}
