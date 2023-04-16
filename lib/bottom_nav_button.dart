// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flower_recognition_application/design/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BottomButton extends StatelessWidget {
  final String title;
  final VoidCallback func;
  final Color color;
  const BottomButton({
    Key? key,
    required this.title,
    required this.func,
    this.color = const Color(0xff247CFF),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        height: 50.h,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(45))),
        child: Center(
          child: Text(title, style: kFont20),
        ),
      ),
    );
  }
}
