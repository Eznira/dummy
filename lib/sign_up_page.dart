import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Signify", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                  color: Colors.deepPurple),
            ),
            SizedBox(height: 80,),
            Text("Sign Up to get started!", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black45),
            ),
            CustomTextFeild(hintText: "Username",),
            CustomTextFeild(hintText: "Password", obsureText: true,),
            SizedBox(height: 20,),
            SignUpButton(),
          ],
        ),
      ),
    );
  }
}

class CustomTextFeild extends StatelessWidget {

  CustomTextFeild({
    super.key,
    required this.hintText,
    this.obsureText,
  });


  final String? hintText;
  final bool? obsureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextField(
        obscureText: obsureText ?? false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: hintText,
        ),

      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, "/home");
      },
      child: Container(
        width: 160,
        child: Center(child: Text("SignUp")),
      ),
    );
  }
}

