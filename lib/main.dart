import 'package:flower_recognition_application/pages/main_root/MainPage.dart';
import 'package:flower_recognition_application/pages/main_root/SignPage.dart';
import 'package:flower_recognition_application/pages/main_root/registration_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignPage(),
      //MainPage(),
      //RegistrationPage(),
    );
  }
}