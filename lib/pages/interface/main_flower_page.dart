import 'package:flower_recognition_application/design/colors.dart';
import 'package:flower_recognition_application/design/style.dart';
import 'package:flower_recognition_application/pages/interface/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MainFlowerPage extends StatefulWidget {
  const MainFlowerPage({Key? key}) : super(key: key);

  @override
  State<MainFlowerPage> createState() => _MainFlowerPageState();
}

class _MainFlowerPageState extends State<MainFlowerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(backgroundImage: const AssetImage('images/shop_page_image.jpg',),radius: 45.r,),
            Text('Welcome Altynbek!', style: kFont18,),
            //SizedBox(height: 180.h,),
            HomePage(),
            ],
          ),
      ),
    );
  }
}
