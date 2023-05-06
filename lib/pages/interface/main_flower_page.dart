import 'package:flower_recognition_application/bloc/auth_bloc.dart';
import 'package:flower_recognition_application/bloc/auth_state.dart';
import 'package:flower_recognition_application/data/presentation/sign_in/sign_in.dart';
import 'package:flower_recognition_application/design/colors.dart';
import 'package:flower_recognition_application/design/style.dart';
import 'package:flower_recognition_application/pages/interface/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MainFlowerPage extends StatefulWidget {
  const MainFlowerPage({Key? key}) : super(key: key);

  @override
  State<MainFlowerPage> createState() => _MainFlowerPageState();
}

class _MainFlowerPageState extends State<MainFlowerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
        body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
      if (state is UnAuthenticated) {
        // Navigate to the sign in screen when the user Signs Out
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => SignIn()),
              (route) => false,
        );
      }
    },
      child: Container(
        child: Column(
          children: [
            CircleAvatar(backgroundImage: const AssetImage('images/shop_page_image.jpg',),radius: 45.r,),
            Text('Welcome Altynbek!', style: kFont18,),
            //SizedBox(height: 180.h,),
            HomePage(),
          ],
        ),
      ),
    ),
    );
  }
}
