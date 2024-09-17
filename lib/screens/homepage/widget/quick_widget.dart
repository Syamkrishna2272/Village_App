import 'package:flutter/material.dart';

class QuickAccessWidget extends StatelessWidget {
  const QuickAccessWidget({
    super.key,
    required this.screenWidth,
    required this.quickaccessData,
    required this.screenHeight,
  });

  final double screenWidth;
  final List<Map<String, dynamic>> quickaccessData;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: quickaccessData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: screenWidth / 30,
          mainAxisSpacing: screenHeight / 50,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final item = quickaccessData[index];
          return Card(
            elevation: 2,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    width: screenWidth / 5,
                    height: screenHeight / 18,
                    child: Icon(
                      item['icon'],
                      size: screenWidth / 10,
                      color: const Color(0xFF427ECC),
                    ),
                  ),
                  SizedBox(height: screenHeight / 60),
                  Text(
                    item['text'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth / 32,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}