import 'package:flutter/material.dart';
import 'package:kandy_vpn/data/shared_prefs_manager.dart';
import 'package:kandy_vpn/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          child: Image.asset(
            "assets/logo.jpeg",
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // Wait until the widget is done building
    WidgetsBinding.instance.addPostFrameCallback((timestamp) async {
      // TODO: Check if already logged in (Shared prefrences)
      if (await SharedPrefsManager.readData("logged_in") == true) {
        // Go to home screen
        Navigator.pushReplacementNamed(
          context,
          HomeScreen.routeName,
        );
      }
      // TODO: if not, go to start screen
    });
  }
}
