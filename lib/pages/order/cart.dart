import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/global_key.dart';
import '../../widgets/size_hor.dart';
import '../../design/style.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.white
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20),)
                ),
                margin: const EdgeInsets.all(20),
                padding: EdgeInsets.only(left:5.w,right: 15.w,bottom: 15.h,top: 15.h),
                //padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(36), // Image radius
                        child: Image.asset('images/shop_page_image.jpg', fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 5.h,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Rose', style: kFont26,),
                          Text('Green', style: kFont20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "Price:",
                                  style: kFont15,
                                  children: <TextSpan>[
                                    TextSpan(text: ' \$10',
                                        style: kFont15
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: Colors.grey
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.add),
                                    Text('1'),
                                    Icon(Icons.remove),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80.h,
        padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 20.w,right: 20.w),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 10.w,right: 10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: Colors.white,
              ),
                child: Row(
                  children: [
                    Text('\$ 102',style: kFont20,),
                  ],
                ),
              ),
            Container(
              padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 10.w,right: 10.w),
              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.white
                ),
                child: Row(
                  children: [
                    Text('Check out', style: kFont20,)
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
