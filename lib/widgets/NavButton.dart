// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:resumeportfolio/units/appColors.dart';

class NavButton extends StatelessWidget {
  final text;
  final Onpressed;

  const NavButton({
    super.key,
    this.text,
    this.Onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onFocusChange: (value) => AppColors.bu1,
      onPressed: Onpressed,
      child: Container(
        alignment: Alignment.center,
        padding:
            const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
        decoration: BoxDecoration(
          color: AppColors.bu3,
          boxShadow: const [BoxShadow(blurRadius: 5)],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: AppColors.bu2,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.bk1,
          ),
        ),
      ),
    );
  }
}
