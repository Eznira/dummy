import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.purple[500],
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            color: Colors.purple[300],
            height: 160,
            width: 200,
          ),
          Container(
            color: Colors.purple[100],
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
