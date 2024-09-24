import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final Color buttonColor;
  final String text;
  final double fontSize;
  final IconData? icon;
  final Color? iconColor;
  final double? width;
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
          borderRadius: BorderRadius.circular(screenWidth / 38),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: iconColor ?? Colors.black, //
              size: screenWidth / 20,
            ),
          if (icon != null) SizedBox(width: screenWidth / 50),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
