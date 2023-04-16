import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../design/style.dart';

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
                  padding: EdgeInsets.only(left: 5.w,right: 15.w,bottom: 15.h,top: 15.h),
                  //padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text('Romantic'),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(36), // Image radius
                              child: Image.asset('images/shop_page_image.jpg', fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 5.w),
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

