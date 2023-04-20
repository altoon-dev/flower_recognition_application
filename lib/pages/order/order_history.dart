import 'package:flower_recognition_application/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../design/colors.dart';
import '../../design/style.dart';
import '../../text_icon_widget.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
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
          'Order History',
          style: kFont26,
        ),
      ),
      backgroundColor: const Color(0xFFE1EFED),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
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
                  padding: EdgeInsets.only(left: 5.w,right: 15.w,bottom: 5.h,top: 5.h),
                  //padding: Edg  eInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Romantic', style: kFont26Cart,),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(36), // Image radius
                              child: Image.asset('images/shop_page_image.jpg', fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Cost: \$110", style: kFont20,),
                                RichText(
                                  text: TextSpan(
                                    text: "Date:",
                                    style: kFont15,
                                    children: <TextSpan>[
                                      TextSpan(text: ' 11/10/2022', style: kFont15
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "Pieces:",
                                        style: kFont15,
                                        children: <TextSpan>[
                                          TextSpan(text: ' 10',
                                              style: kFont15
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextIconWidget(icon: Icons.arrow_forward_ios_sharp, text: 'more', color: AppColors.textDefault, iconColor: AppColors.textPassword)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.white
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20),)
                  ),
                  margin: const EdgeInsets.all(20),
                  padding: EdgeInsets.only(left: 5.w,right: 15.w,bottom: 5.h,top: 5.h),
                  //padding: Edg  eInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Romantic', style: kFont26Cart,),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(36), // Image radius
                              child: Image.asset('images/shop_page_image.jpg', fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Cost: \$110", style: kFont20,),
                                RichText(
                                  text: TextSpan(
                                    text: "Date:",
                                    style: kFont15,
                                    children: <TextSpan>[
                                      TextSpan(text: ' 11/10/2022', style: kFont15
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "Pieces:",
                                        style: kFont15,
                                        children: <TextSpan>[
                                          TextSpan(text: ' 10',
                                              style: kFont15
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextIconWidget(icon: Icons.arrow_forward_ios_sharp, text: 'more', color: AppColors.textDefault, iconColor: AppColors.textPassword)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.white
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20),)
                  ),
                  margin: const EdgeInsets.all(20),
                  padding: EdgeInsets.only(left: 5.w,right: 15.w,bottom: 5.h,top: 5.h),
                  //padding: Edg  eInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Romantic', style: kFont26Cart,),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(36), // Image radius
                              child: Image.asset('images/shop_page_image.jpg', fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Cost: \$110", style: kFont20,),
                                RichText(
                                  text: TextSpan(
                                    text: "Date:",
                                    style: kFont15,
                                    children: <TextSpan>[
                                      TextSpan(text: ' 11/10/2022', style: kFont15
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "Pieces:",
                                        style: kFont15,
                                        children: <TextSpan>[
                                          TextSpan(text: ' 10',
                                              style: kFont15
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextIconWidget(icon: Icons.arrow_forward_ios_sharp, text: 'more', color: AppColors.textDefault, iconColor: AppColors.textPassword)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.white
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20),)
                  ),
                  margin: const EdgeInsets.all(20),
                  padding: EdgeInsets.only(left: 5.w,right: 15.w,bottom: 5.h,top: 5.h),
                  //padding: Edg  eInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Romantic', style: kFont26Cart,),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(36), // Image radius
                              child: Image.asset('images/shop_page_image.jpg', fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Cost: \$110", style: kFont20,),
                                RichText(
                                  text: TextSpan(
                                    text: "Date:",
                                    style: kFont15,
                                    children: <TextSpan>[
                                      TextSpan(text: ' 11/10/2022', style: kFont15
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "Pieces:",
                                        style: kFont15,
                                        children: <TextSpan>[
                                          TextSpan(text: ' 10',
                                              style: kFont15
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextIconWidget(icon: Icons.arrow_forward_ios_sharp, text: 'more', color: AppColors.textDefault, iconColor: AppColors.textPassword)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.white
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20),)
                  ),
                  margin: const EdgeInsets.all(20),
                  padding: EdgeInsets.only(left: 5.w,right: 15.w,bottom: 5.h,top: 5.h),
                  //padding: Edg  eInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Romantic', style: kFont26Cart,),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(36), // Image radius
                              child: Image.asset('images/shop_page_image.jpg', fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Cost: \$110", style: kFont20,),
                                RichText(
                                  text: TextSpan(
                                    text: "Date:",
                                    style: kFont15,
                                    children: <TextSpan>[
                                      TextSpan(text: ' 11/10/2022', style: kFont15
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: "Pieces:",
                                        style: kFont15,
                                        children: <TextSpan>[
                                          TextSpan(text: ' 10',
                                              style: kFont15
                                          ),
                                        ],
                                      ),
                                    ),
                                    TextIconWidget(icon: Icons.arrow_forward_ios_sharp, text: 'more', color: AppColors.textDefault, iconColor: AppColors.textPassword)
                                  ],
                                ),
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
      ),
    );
  }
}

