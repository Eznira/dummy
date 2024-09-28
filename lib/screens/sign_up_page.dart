import 'package:flutter/material.dart';

import '../components/custom_buttons.dart';
import '../components/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  void _signUp() {}

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
          Column(
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
                "Sign Up to get started!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey[700]),
              ),
              CustomTextFeild(
                hintText: "Username",
              ),
              CustomTextFeild(
                hintText: "Password",
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
                child: SignUpButton(
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
                  Text("Not a members?"),
                  TextButton(
                    onPressed: () {},
                    child: Text("Register"),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
