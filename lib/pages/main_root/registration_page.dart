import 'package:flower_recognition_application/design/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1EFED),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
               // SvgPicture.asset('images/top_ellipse.svg', height: 40.h,),
                SizedBox(height: 200.h),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: 400.w,
                  child:
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your full name:',
                      hintStyle: kFont20,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 20.h),
                  width: 400.w,
                  child:
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your email:',
                      hintStyle: kFont20,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 20.h),
                  width:400.w,
                  child:
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter password:',
                      hintStyle: kFont20,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.w,right: 20.w,bottom: 20.h),
                  width: 400.w,
                  child:
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Confirm password:',
                      hintStyle: kFont20,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  width: 300.w,
                  height: 50.h,
                  child: ElevatedButton(
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF91DABB),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Text("REGISTER", style: kFont26Get),
                  ),
                ),
                SizedBox(height: 5.h,),
                Container(
                  width: 500.w,
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {},
                    child: RichText(
                      text: const TextSpan(
                        text: "Already have an account?",
                        style: kFont16,
                        children: <TextSpan>[
                          TextSpan(text: ' Sign in', style: kFont16SigIn,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
