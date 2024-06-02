import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kandy_vpn/data/shared_prefs_manager.dart';
import 'package:kandy_vpn/screens/home_screen.dart';
import 'package:kandy_vpn/screens/signup_screen.dart';
import 'package:kandy_vpn/widgets/logo.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LogoWithText(
          radius: 100.0,
        ),
        // child: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Logo(
        //       radius: 100.0,
        //     ),
        //     Text(
        //       "Kandy VPN",
        //       style: TextStyle(
        //         fontSize: 20.0,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    print("Splash scereen");

    // Wait until the widget is done building
    WidgetsBinding.instance.addPostFrameCallback(
      (timestamp) async {
        // Wait for 2 seconds
        Timer(const Duration(seconds: 2), () async {
          // Go to homescreen if already logged in or start screen otherwise.
          Navigator.pushReplacementNamed(
            context,
            await SharedPrefsManager.readData(
                      "logged_in",
                    ) ==
                    true
                ? HomeScreen.routeName
                : SignupScreen.routeName,
          );
        });
      },
    );
  }
}
