import 'dart:math';

import 'package:flutter/material.dart';

class QuoteCart extends StatelessWidget {
  final String title;
  final String subtitle;
  const QuoteCart({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
        gradient: const LinearGradient(colors: [
          Color(0xffe6e6e6),
          Colors.white,
        ], transform: GradientRotation(90 * pi / 180)),
        boxShadow: const [
          BoxShadow(
            offset: Offset(-3, -5),
            blurRadius: 10,
            color: Color(0xffc7c7c7),
          ),
          BoxShadow(
            offset: Offset(20, 30),
            blurRadius: 10,
            color: Color(0xffffffff),
          )
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
