import 'package:flower_recognition_application/design/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe1efed),
      body:  Stack(
    children: <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          color: Color(0xFF91DABB),
        ),
      ],
    ),
    Positioned(
    top: 240,
    bottom: 420,
    left: 15,
    right: 265,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white
      ),
      child: Column(
        children: [
          SvgPicture.asset('images/search.svg',height: 80,),
          Text('Search', style: kFont24Cart,)
        ],
      ),

    ),
    ),
      Positioned(
        top: 240,
        bottom: 420,
        left: 140,
        right: 140,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white
          ),
          child: Column(
            children: [
              SvgPicture.asset('images/aa.svg',height: 80,),
              Text('Flowers', style: kFont24Cart,)
            ],
          ),
        ),
      ),
      Positioned(
        top: 240,
        bottom: 420,
        left: 265,
        right: 15,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white
          ),
          child: Column(
            children: [
              SvgPicture.asset('images/bbb.svg', height: 80,),
              Text('History', style: kFont24Cart,)
            ],
          ),

        ),
      ),
    ],
    ),
    );
  }
}
