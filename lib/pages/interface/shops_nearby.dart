import 'package:flower_recognition_application/design/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ShopsNearby extends StatefulWidget {
  const ShopsNearby({Key? key}) : super(key: key);

  @override
  State<ShopsNearby> createState() => _ShopsNearbyState();
}

class _ShopsNearbyState extends State<ShopsNearby> {
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
          'Shops nearby',
          style: kFont26,
        ),
      ),
      backgroundColor: const Color(0xFFE1EFED),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Romantic', style: kFont26,),
                          RichText(
                            text: TextSpan(
                              text: "Rating: 4.5",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' (1,300 Ratings)', style: kFont15
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Location: 1.3",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' km',
                                  style: kFont15
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Romantic', style: kFont26,),
                          RichText(
                            text: TextSpan(
                              text: "Rating: 4.5",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' (1,300 Ratings)', style: kFont15
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Location: 1.3",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' km',
                                    style: kFont15
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Romantic', style: kFont26,),
                          RichText(
                            text: TextSpan(
                              text: "Rating: 4.5",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' (1,300 Ratings)', style: kFont15
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Location: 1.3",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' km',
                                    style: kFont15
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Romantic', style: kFont26,),
                          RichText(
                            text: TextSpan(
                              text: "Rating: 4.5",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' (1,300 Ratings)', style: kFont15
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Location: 1.3",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' km',
                                    style: kFont15
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Romantic', style: kFont26,),
                          RichText(
                            text: TextSpan(
                              text: "Rating: 4.5",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' (1,300 Ratings)', style: kFont15
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Location: 1.3",
                              style: kFont15,
                              children: <TextSpan>[
                                TextSpan(text: ' km',
                                    style: kFont15
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ) ),
    );
  }
}
