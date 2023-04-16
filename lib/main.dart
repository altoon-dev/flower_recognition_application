import 'package:flower_recognition_application/pages/interface/flower_page.dart';
import 'package:flower_recognition_application/pages/interface/home_page.dart';
import 'package:flower_recognition_application/pages/interface/main_flower_page.dart';
import 'package:flower_recognition_application/pages/interface/shop_page.dart';
import 'package:flower_recognition_application/pages/interface/shops_nearby.dart';
import 'package:flower_recognition_application/pages/main_root/MainPage.dart';
import 'package:flower_recognition_application/pages/main_root/SignPage.dart';
import 'package:flower_recognition_application/pages/main_root/registration_page.dart';
import 'package:flower_recognition_application/pages/order/cart.dart';
import 'package:flower_recognition_application/pages/order/order_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/global_key.dart';


void main() async{
  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (ctx, child){
        ScreenUtil.init(ctx);
        return Theme(data: ThemeData(primarySwatch: Colors.blue),
            child: MainFlowerPage());
      },
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:// OrderHistory()
      //FlowerPage()
     //ShopsNearby()
      //ShopPage()
      //SignPage(),
      MainPage(),
      //RegistrationPage(),
    );
  }
}