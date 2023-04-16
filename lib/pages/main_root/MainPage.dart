import 'package:flower_recognition_application/design/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1EFED),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60.h),
              SvgPicture.asset('images/main_start.svg'),
              SizedBox(height: 30.h),
              const Text('All Flowers in one click', style: kFont30,),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w,right: 20.w),
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iaculis amet, intger fames orci semper bibendum nunc enim. Diam, egestas feugiat et dignissim purus aliquam est viverra semper. Vulputate facilisis consectetur adipiscing congue nibh aenean lorem nam. Sit faucibus nulla praesent consequat faucibus condimentum eget feugiat nisl',
                  style: kFont16,)
              ),
              SizedBox(height: 30.h),
              SizedBox(
                width: 300.w,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () => print("it's pressed"),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF91DABB),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  child: const Text("Get Started", style: kFont26Get),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
