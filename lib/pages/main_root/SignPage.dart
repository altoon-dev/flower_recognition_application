import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1EFED),
      body: SafeArea(
        child: Column(
          children: [
            Text('Welcome on Board!', style: GoogleFonts.poppins(fontSize: 31,color: Color(0xFF000000)),),
            SvgPicture.asset('images/sign_in_icon.svg'),
            Container(
              padding: EdgeInsets.all(20),
              width:400,
              child:
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your email:',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width:400,
              child:
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Confirm password:',
                  border: OutlineInputBorder(
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
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              width: 300,
              height: 40,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xFF91DABB),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
                child: Text(
                  'REGISTER',
                  style: GoogleFonts.poppins(
                      fontSize: 22, fontWeight: FontWeight.w600,color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 500,
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    text: "Dont have an account?",
                    style: GoogleFonts.nunito(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(text: ' Sign up', style: GoogleFonts.nunito(
                          fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF46B88F)),
                      ),
                    ],
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
