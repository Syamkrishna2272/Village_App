import 'package:flutter/material.dart';

class OfficeWidget extends StatelessWidget {
  final List<Map<String, dynamic>> officeData = [
    {'image': 'lib/asset/img/image 1.png', 'text': 'BANK'},
    {'image': 'lib/asset/img/image 2.png', 'text': 'KSEB'},
    {'image': 'lib/asset/img/image 3.png', 'text': 'Police'},
    {'image': 'lib/asset/img/image 4.png', 'text': 'MVD'},
  ];
  OfficeWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
      child: SizedBox(
        height: screenHeight / 6.5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: officeData.length,
          itemBuilder: (context, index) {
            final item = officeData[index];
            return Padding(
              padding: EdgeInsets.only(right: screenWidth / 30),
              child: Container(
                width: screenWidth / 3.5,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: const Color(0XFFD9D9D9),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(screenWidth / 45),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth / 7,
                      height: screenHeight / 10,
                      child: Image.asset(item['image']),
                    ),
                    SizedBox(height: screenHeight / 60),
                    Text(
                      item['text'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth / 32,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
