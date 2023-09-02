import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:game_of_thrones_quotes/core/themes/app_themes.dart';

class HouseCart extends StatelessWidget {
  final String name;
  final String image;
  final void Function() onTap;
  const HouseCart({
    super.key,
    required this.name,
    required this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.black.withOpacity(0.05)),
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 120,
                child: CachedNetworkImage(
                  imageUrl: image,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator.adaptive(),
                  fit: BoxFit.fitHeight,
                )),
            const Spacer(),
            Flexible(
              child: Text(
                name,
                style: CustomTextStyles.ancientFontStyle
                    .copyWith(fontSize: 15, letterSpacing: 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
