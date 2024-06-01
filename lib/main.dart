import 'package:flutter/material.dart';
import 'package:kandy_vpn/screens/home_screen.dart';
import 'package:kandy_vpn/screens/login_screen.dart';
import 'package:kandy_vpn/screens/signup_screen.dart';
import 'package:kandy_vpn/screens/splash_screen.dart';
import 'package:kandy_vpn/screens/start_screen.dart';

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
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        StartScreen.routeName: (context) => const StartScreen(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
