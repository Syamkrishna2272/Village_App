import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF427ECC),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 12,
              width: MediaQuery.sizeOf(context).width / 2.8,
              decoration: BoxDecoration(
                  color: const Color(0xFF427ECC),
                  border: Border.all(
                      color: Colors.white,
                      width: MediaQuery.sizeOf(context).width / 65)),
              child: Center(
                  child: Text(
                "App Logo",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.sizeOf(context).width / 15,
                    fontWeight: FontWeight.w600),
              )),
            )
          ],
        ),
      )),
    );
  }
}
