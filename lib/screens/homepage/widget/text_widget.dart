import 'package:flutter/material.dart';

class HomeTextWidget extends StatelessWidget {
  const HomeTextWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.text, // Text to display
    required this.fontWeight, // Font weight for text
    required this.fontSize, // Font size for text
    required this.paddingLeft, // Left padding for the text
    required this.paddingTop, // Top padding for the text
  });

  final double screenWidth;
  final double screenHeight;
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final double paddingLeft;
  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: paddingLeft, // Left padding passed as a parameter
            top: paddingTop, // Top padding passed as a parameter
          ),
          child: Text(
            text, // Text passed as a parameter
            style: TextStyle(
              fontWeight: fontWeight, // Font weight passed as a parameter
              fontSize: fontSize, // Font size passed as a parameter
            ),
          ),
        ),
      ],
    );
  }
}
