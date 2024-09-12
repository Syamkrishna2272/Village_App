import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
          'OTP Confirmation',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}