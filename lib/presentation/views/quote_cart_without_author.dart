import 'dart:math';

import 'package:flutter/material.dart';
import 'package:game_of_thrones_quotes/core/themes/app_themes.dart';

class QuoteCartWithOutSubtitle extends StatelessWidget {
  final String title;
  const QuoteCartWithOutSubtitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
        gradient: const LinearGradient(colors: [
          Color(0xffe6e6e6),
          Color.fromARGB(255, 239, 239, 239),
        ], transform: GradientRotation(90 * pi / 180)),
        boxShadow: const [
          BoxShadow(
            offset: Offset(-5, -5),
            blurRadius: 10,
            spreadRadius: 2,
            color: Color(0xffc7c7c7),
          ),
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 10,
            spreadRadius: 4,
            color: Colors.white,
          )
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: CustomTextStyles.handwritingStyle,
        ),
      ),
    );
  }
}
