import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  GesturePage({super.key});

  @override
  State<GesturePage> createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  int _index = 0;
  final _optionArray = [700, 500, 400, 300];
  late int _option = _optionArray.first;

  void _changeBox() {
    if (_index == _optionArray.length - 1) {
      _index = 0;
    } else {
      _index++;
    }

    setState(() {
      _option = _optionArray[_index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: GestureDetector(
          onTap: () {
            _changeBox();
          },
          child: ColoredBox(option: _option),
        ),
      ),
    );
  }
}

class ColoredBox extends StatelessWidget {
  ColoredBox({super.key, required int this.option});

  int option;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Tap me!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepPurple[option],
      ),
    );
  }
}
