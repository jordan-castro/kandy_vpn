import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:kandy_vpn/screens/home_screen.dart';
import 'package:kandy_vpn/widgets/app_bar.dart';
import 'package:kandy_vpn/widgets/logo.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = "/signup";
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoAppBarTitle(
          title: "Signin",
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50.0,
            ),
            const LogoWithText(
              radius: 100.0,
            ),
            // const Logo(
            //   radius: 100.0,
            // ),
            // const Text("Kandy VPN", style: TextStyle(),),
            const Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 60.0,
              child: SignInButton(
                Buttons.Google,
                onPressed: () {
                  print("Sign in with Google");
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                },
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 60.0,
              child: SignInButton(
                Buttons.Apple,
                onPressed: () {
                  print("Sign in with APPLE");
                },
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
