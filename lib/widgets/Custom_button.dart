// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:resumeportfolio/units/appColors.dart';

class CustomButton extends StatelessWidget {
  var text;
  var textAlign;
  final Color color;
  final Onpressed;

  CustomButton({
    super.key,
    this.text,
    this.textAlign,
    this.Onpressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Onpressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
          color: AppColors.td1,
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

class Customdivider extends StatelessWidget {
  const Customdivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Divider(
        thickness: 2,
        color: AppColors.rd3,
      ),
    );
  }
}

class CustomAnimatedText extends StatefulWidget {
  var onHover;
  Widget child;

  final Onpressed;

  CustomAnimatedText({
    super.key,
    this.onHover,
    required this.child,
    this.Onpressed,
  });

  @override
  State<CustomAnimatedText> createState() => _CustomAnimatedTextState();
}

class _CustomAnimatedTextState extends State<CustomAnimatedText> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.Onpressed,
        onHover: widget.onHover,
        mouseCursor: SystemMouseCursors.none,
        child: widget.child);
  }
}

class CustomAnimatedIcon extends StatefulWidget {
  var onHover;
  Widget child;
  final Onpressed;

  CustomAnimatedIcon({
    super.key,
    this.onHover,
    required this.child,
    this.Onpressed,
  });

  @override
  State<CustomAnimatedIcon> createState() => _CustomAnimatedIconState();
}

class _CustomAnimatedIconState extends State<CustomAnimatedIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.Onpressed,
        onHover: widget.onHover,
        mouseCursor: SystemMouseCursors.none,
        child: widget.child);
  }
}
