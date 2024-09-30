import 'package:flutter/material.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      this.imagePath});

  final double screenWidth;
  final double screenHeight;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight / 5,
      decoration: const BoxDecoration(
        color: Color(0XFFF7F4F6),
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth / 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  """മുഖ്യമന്ത്രിയുടെ മകൾ വീണ
യ്‌ക്ക് കുരുക്ക്; അന്വേഷണം 
എസ്എഫ്ഐഒയ്ക്ക് ....""",
                  style: TextStyle(
                      fontSize: screenWidth / 25, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: screenWidth / 22),
                Padding(
                  padding: EdgeInsets.all(screenWidth / 38),
                  child: Container(
                    height: screenHeight / 10,
                    width: screenWidth / 5,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(screenWidth / 45)),
                    child: Image.asset(
                      imagePath!,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Katharammal News",
                  style: TextStyle(
                      fontSize: screenWidth / 32, fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.check_circle_outlined,
                  size: screenWidth / 28,
                ),
                SizedBox(width: screenWidth / 25),
                Text(
                  "13 Min ago",
                  style: TextStyle(fontSize: screenWidth / 32),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
