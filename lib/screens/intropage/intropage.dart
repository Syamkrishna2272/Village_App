import 'package:flutter/material.dart';
import 'package:village_app/screens/verificationpage/mobile_verification.dart';
import 'package:village_app/screens/widgets/button_widget.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF427ECC),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight / 13,
                    width: screenWidth / 2.4,
                    decoration: BoxDecoration(
                      color: const Color(0xFF427ECC),
                      border: Border.all(
                        color: Colors.white,
                        width: screenWidth / 120,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "App Logo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth / 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight / 40),
                  Text(
                    "Check everything in this app text here",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: screenWidth / 25,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: screenHeight / 20, // Adjusts the button to the bottom
              left: screenWidth / 15, // Horizontal padding
              right: screenWidth / 15, // Horizontal padding
              child: SizedBox(
                width: double.infinity,
                child: ButtonWidget(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  buttonColor: Colors.white,
                  text: 'Continue with phone number',
                  fontSize: screenWidth / 28,
                  icon: Icons.phone,
                  iconColor: Colors.black,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const MobileNumberScreen();
                    }));
                  },
                  textColor: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
