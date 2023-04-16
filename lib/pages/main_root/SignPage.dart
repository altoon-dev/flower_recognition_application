import 'package:flower_recognition_application/design/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1EFED),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80.h),
              const Text('Welcome on Board!', style: kFont30),
              SvgPicture.asset('images/sign_in_icon.svg'),
              Container(
                margin: EdgeInsets.all(10),
                padding:  EdgeInsets.only(left: 20.w,right: 20.w,top: 20.h, ),
                width:400.w,
                child:
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your email:',
                    hintStyle: kFont16,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Container(
                padding:  EdgeInsets.only(left: 20.w,right: 20.w, ),
                margin: EdgeInsets.all(10),
                width:400.w,
                child:
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Confirm password:',
                    hintStyle: kFont16,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Color(0xFF46B88F), // Text Color
                ),
                child: const Text(
                  'Forget Password?',
                  style: kFont24SignUp,
                ),
              ),
              SizedBox(
                width: 300.w,
                height: 40.h,
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
                        TextSpan(text: ' Sign up', style: kFont16SigIn,)
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
