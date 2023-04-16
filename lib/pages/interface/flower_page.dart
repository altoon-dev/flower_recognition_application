import 'package:flower_recognition_application/design/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class FlowerPage extends StatefulWidget {
  const FlowerPage({Key? key}) : super(key: key);

  @override
  State<FlowerPage> createState() => _FlowerPageState();
}

class _FlowerPageState extends State<FlowerPage> {
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
          'Sunflower',
          style: kFont26,
        ),
      ),
      backgroundColor: const Color(0xFFE1EFED),
      body: Column(
          children: [
            Expanded(
              child: Container(
                height: 400.h,
                width: 275.w,
                margin: EdgeInsets.only(left: 20.w,right:20.w,top: 20.h, bottom: 10.h),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('images/shop_page_image.jpg'),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Metus, molestie arcu, bibendum condimentum amet velit sit nulla est. Natoque proin convallis consectetur gravida turpis nulla libero magna enim. Viverra ultrices mollis egestas mauris.',
              style: kFont15,),
            ),
          ],
        ),
      );
  }
}
