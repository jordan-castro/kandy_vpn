import 'package:flutter/material.dart';

void main() {
  runApp(const KandyVPN());
}

class KandyVPN extends StatelessWidget {
  const KandyVPN({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kandy VPN",
    );
  }
}
