import 'package:flower_recognition_application/design/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ShopPage extends StatefulWidget {
  int pageInd;

  ShopPage({
    Key? key,
    this.pageInd = 0,
  }) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1EFED),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  height: 180.h,
                  width: 300.w,
                  margin: EdgeInsets.only(left: 20.w,right: 20.w,top: 20.h, bottom: 10.h),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('images/shop_page_image.jpg'),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
                const Text('Daisy Shop', style: kFont30,),
             //   SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 10.w,right: 10.w,top: 10.h),
                  padding: EdgeInsets.only(left: 30.w, right: 30.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(backgroundImage: const AssetImage('images/shop_page_image.jpg'),
                            radius: 20.r,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star,color: Colors.yellowAccent,),
                          RichText(
                            text: const TextSpan(
                              text: "4.5",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' (1,300 Ratings)', style: kFont14
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
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Metus, molestie arcu, bibendum condimentum amet velit sit nulla est. Natoque proin convallis consectetur gravida turpis nulla libero magna enim. Viverra ultrices mollis egestas mauris.',
                  style: kFont15,),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.w,right: 20.w,  bottom: 5.h),
                  margin:  EdgeInsets.only(left: 20.w,right: 20.w, bottom: 20.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.shopping_bag_outlined, color: Color(0xff343434),),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Catalogue', style: kFont20 ,),
                                SizedBox(height: 5.h,),
                                const Text('1 video', style: kFont15,)
                              ],
                            ),
                            const Icon(Icons.arrow_forward_outlined, color: Color(0xff343434),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.w,right: 20.w, bottom: 5.h),
                  margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.shopping_bag_outlined, color: Color(0xff343434),),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Catalogue', style: kFont20 ,),
                                SizedBox(height: 5.h,),
                                const Text('1 video', style: kFont15,)
                              ],
                            ),
                            const Icon(Icons.arrow_forward_outlined, color: Color(0xff343434),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 300.w,
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF91DABB),
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Text("Order your bouquet", style: kFont26),
                  ),
                ),
              ],
            ),
        ),
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xffCCD2E3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35),),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /// First Icon

            GestureDetector(
              onTap: () {
                setState(() {
                  widget.pageInd = 0;
                });
              },
              child: widget.pageInd == 0
                  ? SizedBox(
                height: 30.h,
                width: 35.w,
                child: Center(
                  child: Center(
                    child: Icon(
                      Icons.home_outlined,
                      size: 35.h,
                    ),
                  ),
                ),
              )
                  : Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                  height: 30.h,
                  width: 35.w,
                  child: Center(
                    child: Icon(
                      Icons.home_outlined,
                      size: 35.h,
                    ),
                  ),
                ),
              ),
            ),

            /// Second Icon

            GestureDetector(
              onTap: () {
                setState(() {
                  widget.pageInd = 1;
                });
              },
              child: widget.pageInd == 1
                  ? SizedBox(
                height: 30.h,
                width: 35.w,
                child: Center(
                  child: Center(
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 35.h,
                    ),
                  ),
                ),
              )
                  : Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                  height: 30.h,
                  width: 35.w,
                  child: Center(
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 35.h,
                    ),
                  ),
                ),
              ),
            ),

            /// Third Icon

            GestureDetector(
              onTap: () {
                setState(() {
                  widget.pageInd = 2;
                });
              },
              child: widget.pageInd == 2
                  ? SizedBox(
                height: 30.h,
                width: 35.w,
                child: Center(
                  child: Center(
                    child: Icon(Icons.search_outlined, size: 35,),
                    //SvgPicture.asset('images/bottom_nav_bar/find_page.svg', height: 25.h,),
                ),
              ),
              )
                  : Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                  height: 30.h,
                  width: 35.w,
                  child: Center(
                    child: Icon(Icons.search_outlined, size: 35,),
                    //SvgPicture.asset('images/bottom_nav_bar/find_page.svg', height: 25.h,),
                  ),
                ),
              ),
            ),

            /// Forth Icon

            GestureDetector(
              onTap: () {
                setState(() {
                  widget.pageInd = 3;
                });
              },
              child: widget.pageInd == 3
                  ? SizedBox(
                height: 30.h,
                width: 35.w,
                child: Center(
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 35.h,
                  ),
                ),
              )
                  : Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                  height: 30.h,
                  width: 35.w,
                  child: Center(
                    child: Center(
                      child: Icon(
                        Icons.account_circle_outlined,
                        size: 35.h,
                      ),
                  ),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}


