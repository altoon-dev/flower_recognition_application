import 'package:flower_recognition_application/design/colors.dart';
import 'package:flower_recognition_application/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../design/style.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        shadowColor: Color(0xffE3E8EF),
        backgroundColor: const Color(0xFFE1EFED),
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Let's find out!",
          style: kFont26,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 250.h,
                width: 250.w,
                margin: EdgeInsets.only(left: 20.w,right:20.w,top: 20.h, bottom: 10.h),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/sunflower.jpg'),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextWidget(icon: Icons.shopping_bag_rounded, text: "How to call it?", color: AppColors.mainBlackColor, iconColor: AppColors.textDefault),
                    Icon(Icons.arrow_forward_ios_sharp, color: AppColors.textDefault,)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextWidget(icon: Icons.bookmark, text: "History", color: AppColors.mainBlackColor, iconColor: AppColors.textDefault),
                    Icon(Icons.arrow_forward_ios_sharp, color: AppColors.textDefault,)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextWidget(icon: Icons.medical_information, text: "How to take care?", color: AppColors.mainBlackColor, iconColor: AppColors.textDefault),
                    Icon(Icons.arrow_forward_ios_sharp, color: AppColors.textDefault,)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextWidget(icon: Icons.question_mark_sharp, text: "Where to find?", color: AppColors.mainBlackColor, iconColor: AppColors.textDefault),
                    Icon(Icons.arrow_forward_ios_sharp, color: AppColors.textDefault,)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
