import 'package:flower_recognition_application/design/colors.dart';
import 'package:flower_recognition_application/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../../design/style.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(viewportFraction: 0.80);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220.h;


  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250.h,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position){
              return _buildPageItem(position);
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.textDefault,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0.r)),
          ),
        ),
        SizedBox(height: 10.h,),
        Container(
          margin: EdgeInsets.only(left: 20.w,right: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Trending Flowers', style: kFont20,),
              Container(child: Text("See All", style: kFont16,),)
            ],
          ),
        )
      ],
    );
  }


  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if(index == _currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if(index == _currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }

    else if(index == _currPageValue.floor()-1){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }

    else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);
    }


    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 200.h,
            margin: EdgeInsets.only(left: 5.w, right: 5.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: AppColors.textColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/shop_page_image.jpg')
                ) ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120.h,
              margin: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 15.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0,5),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5,0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5,0),
                    ),
                  ]
              ),
              child: Container(
                padding: EdgeInsets.only(left: 15.w,right:15.w,top: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Romantic', style: kFont24SignUp,),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.textDefault, size: 15,))
                        ),
                        SizedBox(width: 10.w,),
                        Text('4.5', style: kFont14,),
                        SizedBox(width: 10.w,),
                        RichText(
                          text: const TextSpan(
                            text: "1287",
                            style: kFont15,
                            children: <TextSpan>[
                              TextSpan(text: ' comments', style: kFont14
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconTextWidget(
                            icon: Icons.circle_sharp,
                            text: 'Normal',
                            color: AppColors.textPassword,
                            iconColor: AppColors.textDefault),
                        IconTextWidget(
                            icon: Icons.location_on,
                            text: '1.7km',
                            color: AppColors.textPassword,
                            iconColor: AppColors.textDefault),
                        IconTextWidget(
                            icon: Icons.access_time_rounded,
                            text: '32min',
                            color: AppColors.textPassword,
                            iconColor: AppColors.textDefault),
                      ],)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}