import 'package:flutter/material.dart';


class UniqueText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  TextOverflow overflow;

  UniqueText({Key? key, this.color,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 24,
    this.height = 1.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: height,
      ),
    );
  }
}
