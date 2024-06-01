import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double radius;

  const Logo({
    super.key,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: const AssetImage("assets/logo.jpeg"),
      radius: radius,
    );
  }
}

class LogoWithText extends StatelessWidget {
  final double radius;
  final MainAxisAlignment? mainAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final CrossAxisAlignment? crossAxisAlignment;

  const LogoWithText({
    super.key,
    required this.radius,
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      mainAxisSize: mainAxisSize ?? MainAxisSize.min,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      children: [
        Logo(
          radius: radius,
        ),
        const SizedBox(height: 10.0),
        const Text(
          "Kandy VPN",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
