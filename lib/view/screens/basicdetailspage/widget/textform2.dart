import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormField2 extends StatelessWidget {
  const TextFormField2({
    super.key,
    required this.screenWidth,
    required this.controller
  });

  final double screenWidth;
  final TextEditingController controller;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Last name is required';
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
          // Add error border for validation fail state
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(screenWidth / 40),
        ),
        focusedErrorBorder: OutlineInputBorder(
          // Add focused error border for validation fail state when focused
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(screenWidth / 40),
        ),
        border: InputBorder.none,
        hintText: "Last Name (mandatory)",
        hintStyle: TextStyle(
          fontSize: screenWidth / 30,
          color: const Color.fromARGB(255, 135, 146, 142),
        ),
      ),
    );
  }
}
