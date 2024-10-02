import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final Color buttonColor;
  final String text;
  final double fontSize;
  final IconData? icon;
  final Image? images; // Image property to hold the image widget
  final Color? iconColor;
  final double? width;
  final FontWeight? fontWeight;
  final Color textColor;
  final VoidCallback onPressed;

  const ButtonWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.buttonColor,
    required this.text,
    required this.fontSize,
    this.icon,
    this.iconColor,
    this.width,
    this.images,
    this.fontWeight,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: screenHeight / 50),
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(screenWidth / 45),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (images != null) // Check if an image is provided
            Container(
              width: 24, // Set a fixed width for the image
              height: 24, // Set a fixed height for the image
              child: images, // Use the provided image
            ),
          if (images != null)
            SizedBox(width: screenWidth / 50), // Space between image and text
          if (icon != null) // Check if an icon is provided
            Icon(
              icon,
              color: iconColor ?? Colors.black,
              size: screenWidth / 20,
            ),
          if (icon != null)
            SizedBox(width: screenWidth / 50), // Space between icon and text
          Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight ?? FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
