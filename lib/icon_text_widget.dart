import 'package:flower_recognition_application/unique_text.dart';
import 'package:flower_recognition_application/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;
  const IconTextWidget({Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.iconColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,),
        SizedBox(width: 5.w,),
        UniqueText(text: text, color: color,),
      ],
    );
  }
}
