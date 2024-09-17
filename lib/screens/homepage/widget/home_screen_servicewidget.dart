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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              child: Container(
                width: screenWidth / 2.3,
                height: screenHeight / 15,
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(screenWidth / 40)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 50),
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
            ),
            Card(
              child: Container(
                width: screenWidth / 2.3,
                height: screenHeight / 15,
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(screenWidth / 40)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 50),
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
            ),
          ],
        ),
        SizedBox(
          height: screenHeight / 38,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              child: Container(
                width: screenWidth / 2.3,
                height: screenHeight / 15,
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(screenWidth / 40)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 50),
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
            ),
            Card(
              child: Container(
                width: screenWidth / 2.3,
                height: screenHeight / 15,
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(screenWidth / 40)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 50),
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
              ),
            )
          ],
        )
      ],
    );
  }
}
