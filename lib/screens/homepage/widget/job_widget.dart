import 'package:flutter/material.dart';

class JobWidget extends StatelessWidget {
  
    final List<Map<String, dynamic>> jobData = [
      {'image': 'lib/asset/img/Rectangle 159.png', 'text': 'Emergency'},
      {'image': 'lib/asset/img/Rectangle 160.png', 'text': 'Emergency'},
      {'image': 'lib/asset/img/Rectangle 162.png', 'text': 'Emergency'},
      {'image': 'lib/asset/img/Rectangle 163.png', 'text': 'Emergency'},
    ];
  JobWidget({
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
          itemCount: jobData.length,
          itemBuilder: (context, index) {
            final item = jobData[index];
            return Padding(
              padding: EdgeInsets.only(right: screenWidth / 30),
              child: SizedBox(
                width: screenWidth / 3.5,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth / 40),
                    side: BorderSide(
                        color: Colors.grey.withOpacity(0.3), width: 1),
                  ),
                  elevation: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth,
                        height: screenHeight / 10,
                        child: Image.asset(
                          item['image'],
                          fit: BoxFit.fill,
                        ),
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
              ),
            );
          },
        ),
      ),
    );
  }
}