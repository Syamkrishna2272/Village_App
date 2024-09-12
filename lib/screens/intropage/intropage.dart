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
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight / 13,
                    width: screenWidth / 2.8,
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
                          fontSize: screenWidth / 15,
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
                      fontSize: screenWidth / 28,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth / 15, vertical: screenHeight / 40),
              child: SizedBox(
                width: double.infinity,
                child: ButtonWidget(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  buttonColor: Colors.white,
                  text: 'Continue with phone number',
                  fontSize: screenWidth / 30,
                  icon: Icons.phone,
                  iconColor: Colors.black,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return  const MobileNumberScreen();
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
