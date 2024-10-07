import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/custom_buttons.dart';
import '../components/custom_text_field.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key, required this.onTap});

  VoidCallback onTap;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final email = TextEditingController();
  final password = TextEditingController();

  // Future<void> _signIn() async {
  //   try {
  //     print("Before attempting authentication");
  //     Auth.signInWithEmail(email.text, password.text);
  //   } on AuthException catch (e) {
  //     handleSignInError(e);
  //   }
  // }
  Future<void> _signIn() async {
    // show loading sign
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });

    // attempt signing in
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
    } on FirebaseAuthException catch (e) {
      // pop loading sign
      Navigator.pop(context);

      // handle error
      handleSignInError(e);
    }

    // pop out loading circle
    Navigator.pop(context);
  }

  void handleSignInError(FirebaseAuthException e) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
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
                  height: 40,
                ),
                const Icon(
                  Icons.lock,
                  size: 150,
                ),
                Text(
                  "Sign In!",
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
                    title: 'Sign In',
                    onTap: _signIn,
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
                    const Text("Not a members?"),
                    TextButton(
                      onPressed: widget.onTap,
                      child: const Text("Register"),
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
