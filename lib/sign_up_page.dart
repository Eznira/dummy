import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const SignUpButton(),
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
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          hintStyle: TextStyle(color: Colors.grey[500]),
          fillColor: Colors.white,
          filled: true,
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
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/home");
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 40,
        child: const Center(
          child: Text(
            "SignUp",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class SquareButton extends StatefulWidget {
  SquareButton({
    super.key,
    required this.onTap,
    required this.imagePath,
  });

  void Function()? onTap;
  String imagePath;

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  Color color = Colors.white;

  onHover(bool isHighlighted) {
    if (isHighlighted) {
      setState(() {
        color = Colors.grey[300]!;
      });
    } else {
      setState(() {
        color = Colors.white;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: onHover,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(12)),
        child: SvgPicture.asset(widget.imagePath),
      ),
    );
  }
}
