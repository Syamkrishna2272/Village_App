import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormField1 extends StatelessWidget {
  const TextFormField1({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'First name is required';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
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
        errorBorder: OutlineInputBorder(
          // Add this for error state border
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(screenWidth / 40),
        ),
        focusedErrorBorder: OutlineInputBorder(
          // Add this for focused error state border
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(screenWidth / 40),
        ),
        border: InputBorder.none,
        hintText: "First Name",
        hintStyle: TextStyle(
          fontSize: screenWidth / 30,
          color: const Color.fromARGB(255, 135, 146, 142),
        ),
      ),
    );
  }
}
