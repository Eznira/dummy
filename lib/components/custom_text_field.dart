import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild({
    super.key,
    required this.controller,
    required this.hintText,
    this.obsureText,
  });

  final String? hintText;
  final bool? obsureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
      child: TextField(
        controller: controller,
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
