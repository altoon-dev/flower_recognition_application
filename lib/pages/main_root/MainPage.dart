import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1EFED),
      body: SafeArea(
        child: Column(
          children: [
            SvgPicture.asset('images/main_start.svg'),
            Text('All Flowers in one click', style: GoogleFonts.poppins(fontSize: 31,color: Color(0xFF000000)),),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iaculis amet, intger fames orci semper bibendum nunc enim. Diam, egestas feugiat et dignissim purus aliquam est viverra semper. Vulputate facilisis consectetur adipiscing congue nibh aenean lorem nam. Sit faucibus nulla praesent consequat faucibus condimentum eget feugiat nisl',
            style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF000000)),),
            OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            backgroundColor: Color(0xFF91DABB),
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(1),
            ),
          ),
          child: Text(
            'GET STARTED',
            style: GoogleFonts.poppins(
                fontSize: 22, fontWeight: FontWeight.w600,color: Colors.white),
          ),
          ),
          ],
        ),
      ),
    );
  }
}
