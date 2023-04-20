import 'package:flower_recognition_application/unique_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TextIconWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Color iconColor;
  const TextIconWidget({Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.iconColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UniqueText(text: text, color: color,),
        SizedBox(width: 5.w,),
        Icon(icon, color: iconColor,),
      ],
    );
  }
}
