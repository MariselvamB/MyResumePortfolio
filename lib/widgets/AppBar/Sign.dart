// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              "Sign.png",
              scale: 5,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
