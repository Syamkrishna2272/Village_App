import 'package:flutter/material.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding:  EdgeInsets.only(left: screenWidth/18),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: screenWidth / 2.3,
                height: screenHeight / 13,
                decoration: BoxDecoration(
                    color: const Color(0XFFF4F4F4),
                    borderRadius: BorderRadius.circular(screenWidth / 45)
                    ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 20),
                      child: Image.asset('lib/asset/img/Group 618.png'),
                    ),
                    SizedBox(width: screenWidth / 50),
                    Text(
                      'Auto rickshaw',
                      style: TextStyle(
                          fontSize: screenWidth / 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(width: screenWidth/50,),
              Container(
                width: screenWidth / 2.3,
                height: screenHeight / 13,
                decoration: BoxDecoration(
                    color: const Color(0XFFF4F4F4),
                    borderRadius: BorderRadius.circular(screenWidth / 45)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 20),
                      child: Image.asset('lib/asset/img/Layer_4.png'),
                    ),
                    SizedBox(width: screenWidth / 50),
                    Text(
                      'Donate Blood',
                      style: TextStyle(
                          fontSize: screenWidth / 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight / 90,
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth/18),
          child: Row( 
            children: [
              Container(
                width: screenWidth / 2.3,
                height: screenHeight / 13,
                decoration: BoxDecoration(
                   color: const Color(0XFFF4F4F4),
                    borderRadius: BorderRadius.circular(screenWidth / 45)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 20),
                      child: Image.asset('lib/asset/img/Group 619.png'),
                    ),
                    SizedBox(width: screenWidth / 50),
                    Text(
                      'News Portal',
                      style: TextStyle(
                          fontSize: screenWidth / 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(width: screenWidth/50,),
              Container(
                width: screenWidth / 2.3,
                height: screenHeight / 13,
                decoration: BoxDecoration(
                    color: const Color(0XFFF4F4F4),
                    borderRadius: BorderRadius.circular(screenWidth / 45)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 20),
                      child: Image.asset('lib/asset/img/Layer_41.png'),
                    ),
                    SizedBox(width: screenWidth / 50),
                    Text(
                      'Village Icons',
                      style: TextStyle(
                          fontSize: screenWidth / 30,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
