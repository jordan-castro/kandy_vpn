import 'package:flutter/material.dart';
import 'package:kandy_vpn/widgets/app_bar.dart';
import 'package:kandy_vpn/widgets/connecting_animation.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoAppBarTitle(
          title: "Home",
        ),
      ),
      body: Center(
        child: ConnectingAnimation(
          animationDuration: Duration(seconds: 2),
        ),
      ),
    );
    // return const Placeholder();
  }
}
