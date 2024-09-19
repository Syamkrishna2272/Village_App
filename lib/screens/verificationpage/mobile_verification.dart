import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:village_app/screens/otppage/otp_screen.dart';
import 'package:village_app/screens/widgets/button_widget.dart';
import 'package:village_app/screens/widgets/dialog_screen.dart'; // Make sure you import your ButtonWidget class.

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({super.key});

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showMobileNumberDialog(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBFE),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
          'What is your number ?',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        )),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth / 15, top: screenHeight / 20),
                  child: const Text("Enter Phone Number"),
                ),
                SizedBox(
                  height: screenHeight / 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 15),
                      child: SizedBox(
                          height: screenHeight / 25,
                          width: screenWidth / 5,
                          child: TextFormField(
                            readOnly: true,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(hintText: '+91'),
                          )),
                    ),
                    SizedBox(
                      width: screenWidth / 15,
                    ),
                    SizedBox(
                      height: screenHeight / 25,
                      width: screenWidth / 1.6,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: screenWidth / 23),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.close,
                            size: screenWidth / 20,
                          ),
                          counterText: '',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: screenHeight / 65),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Text("We are send a verification code to this number"),
            SizedBox(
              height: screenHeight / 42,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: screenHeight / 20,
                left: screenWidth / 15,
                right: screenWidth / 15,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ButtonWidget(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  buttonColor: const Color(0xFF427ECC),
                  text: "Continue",
                  fontSize: screenWidth / 28,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const OtpVerificationScreen();
                    }));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
