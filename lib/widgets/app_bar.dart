import 'package:flutter/material.dart';
import 'package:kandy_vpn/widgets/logo.dart';

class LogoAppBarTitle extends StatelessWidget {
  final String title;
  final double? radius;

  const LogoAppBarTitle({
    super.key,
    required this.title,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Logo(
          radius: radius ?? 20.0,
        ),
        const SizedBox(
          width: 20.0,
        ),
        Text(title),
      ],
    );
  }
}
