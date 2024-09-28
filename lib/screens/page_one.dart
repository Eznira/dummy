import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 280,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(
          Icons.heart_broken,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
