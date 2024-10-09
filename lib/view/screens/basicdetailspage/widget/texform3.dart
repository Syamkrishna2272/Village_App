import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@._-]')),
      ],
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0XFFD2D2D2)),
          borderRadius: BorderRadius.circular(screenWidth / 40),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0XFF427ECC)),
          borderRadius: BorderRadius.circular(screenWidth / 40),
        ),
        hintText: "Email (Optional)",
        hintStyle: TextStyle(
          fontSize: screenWidth / 30,
          color: const Color.fromARGB(255, 135, 146, 142),
        ),
      ),
    );
  }
}
