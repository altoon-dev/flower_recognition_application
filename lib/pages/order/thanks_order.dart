import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/global_key.dart';
import '../../widgets/size_hor.dart';
import '../../design/style.dart';

class ThanksPage extends StatefulWidget {
  const ThanksPage({Key? key}) : super(key: key);

  @override
  State<ThanksPage> createState() => _ThanksPageState();
}

class _ThanksPageState extends State<ThanksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE1EFED),
        title: Text('Cart', style: kFont26),
        centerTitle: true,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black,size: 30.sp,),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.home_outlined,color: Colors.black,size: 30.sp,),
          ),
        ],
      ),
      backgroundColor: const Color(0xffE1EFED),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset('images/thanks_order.svg'),
              Container(
                height: 150.h,
                width: 300.w,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Thanks for ordering!',
                      style: kFont24Cart,),
                    Spacer(flex: 2,),
                    Text(
                      'Your order will take 30 minutes!',
                      style: kFont24Cart,)
                  ],
                ),
              ),
              SizedBox(height: 50.h,),
              Container(
                height: 100.h,
                child: const Column(
                  children: [
                    Text(
                      'Order information', style: kFont24CartBlack,
                    ),
                    Text('more', style: kFont24CartBlack,),
                    Icon(Icons.arrow_downward_outlined, size: 40,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
