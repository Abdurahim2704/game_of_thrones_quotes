import 'dart:math';

import 'package:flutter/material.dart';
import 'package:game_of_thrones_quotes/core/themes/app_themes.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const MenuButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
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
        child: Center(
          child: Text(
            title,
            style: CustomTextStyles.ancientFontStyle
                .copyWith(fontSize: 16, letterSpacing: 4),
          ),
        ),
      ),
    );
  }
}
