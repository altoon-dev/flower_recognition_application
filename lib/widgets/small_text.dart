import 'package:flutter/material.dart';


class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  TextOverflow overflow;

  SmallText({Key? key, this.color,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 12,
    this.height = 1.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        height: height,
      ),
    );
  }
}
