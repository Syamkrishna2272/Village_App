import 'package:flutter/material.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenWidth / 25),
      child: Container(
        height: screenHeight / 6,
        width: screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth / 45),
          color: const Color(0XFFF7F4F6),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth / 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FAQs & Feedbacks",
                    style: TextStyle(
                        fontSize: screenWidth / 25,
                        fontWeight: FontWeight.w600),
                  ),
                  const Icon(Icons.arrow_forward_outlined)
                ],
              ),
            ),
            const Divider(thickness: BorderSide.strokeAlignCenter,),
            Padding(
              padding: EdgeInsets.all(screenWidth / 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: screenWidth / 25,
                        fontWeight: FontWeight.w600),
                  ),
                  const Icon(Icons.arrow_forward_outlined)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}