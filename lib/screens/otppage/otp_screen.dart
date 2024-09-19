import 'package:flutter/material.dart';
import 'package:village_app/screens/detailspage/userdetails.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    
    InputDecoration otpFieldDecoration = InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: screenHeight / 70),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Colors.black,   
          width: screenWidth,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
          'OTP Confirmation',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        )),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth / 18, top: screenHeight / 15),
              child: const Text(
                  "Enter 6-digit OTP verification code we have sent to"),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth / 17),
              child: const Text(
                "+91 8606200441",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: screenHeight / 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index) {
                  return SizedBox(
                    width: screenWidth / 8,
                    child: TextFormField(
                      decoration: otpFieldDecoration,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: screenHeight / 25),
                      onChanged: (value) {
                        if (value.length == 1) {
                          if (index < 5) {
                            FocusScope.of(context).nextFocus();
                          } else {
                            FocusScope.of(context).unfocus();
                          }
                        } else if (value.isEmpty) {
                          if (index > 0) {
                            FocusScope.of(context).previousFocus();
                          }
                        }
                      },
                    ),
                  );
                }),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight / 25),
              child: Center(
                child: Column(
                  children: [
                    const Text("Did not get a code ? "),
                    TextButton(
                      onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const UserDetailsScreen();
                       }));
                      },
                      child: const Text(
                        "Resend OTP",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
