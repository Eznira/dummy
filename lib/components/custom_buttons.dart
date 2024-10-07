import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

class CustomRectButton extends StatelessWidget {
  CustomRectButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final String title;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 40,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
