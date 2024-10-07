import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/custom_buttons.dart';
import '../components/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({
    super.key,
    required this.onTap,
  });

  void Function() onTap;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  Future<void> _signUp() async {
    // Confirm password
    if (password.text != confirmPassword.text) {
      showDialog(
          context: context,
          builder: (context) {
            return const Dialog(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Mismatching Passwords!'),
              ),
            );
          });
      return;
    }

    // create new user from email and password
    try {
      FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
    } on FirebaseAuthException catch (e) {
      handleSignUpError(e);
    }

    //attempt sign-in
    try {
      FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
    } on FirebaseAuthException catch (e) {
      handleSignUpError(e);
    }
  }

  void handleSignUpError(FirebaseAuthException e) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(e.code),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey[200],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Signify",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                      color: Colors.deepPurple),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                Text(
                  "Sign Up to get started!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey[700]),
                ),
                CustomTextFeild(
                  hintText: "Username",
                  controller: email,
                ),
                CustomTextFeild(
                  hintText: "Password",
                  controller: password,
                  obsureText: true,
                ),
                CustomTextFeild(
                  hintText: "Confirm Password",
                  controller: confirmPassword,
                  obsureText: true,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.red[400]),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomRectButton(
                    title: 'Sign Up',
                    onTap: _signUp,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Or Continue with:",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareButton(
                        onTap: () {}, imagePath: "assets/google_icon.svg"),
                    const SizedBox(width: 10),
                    SquareButton(
                        onTap: () {}, imagePath: "assets/apple_icon.svg"),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account?"),
                    TextButton(
                      onPressed: widget.onTap,
                      child: Text("Sign In"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
