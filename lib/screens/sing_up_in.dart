import 'package:dummy/screens/sign_up_page.dart';
import 'package:dummy/screens/sing_in_page.dart';
import 'package:flutter/material.dart';

class SingUpIn extends StatefulWidget {
  SingUpIn({super.key});

  @override
  State<SingUpIn> createState() => _SingUpInState();
}

class _SingUpInState extends State<SingUpIn> {
  bool onSignUpScreen = false;

  void toggleSingIn() {
    setState(() {
      onSignUpScreen = !onSignUpScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (onSignUpScreen) {
      return SignUpPage(onTap: toggleSingIn);
    }

    return SignInPage(onTap: toggleSingIn);
  }
}
