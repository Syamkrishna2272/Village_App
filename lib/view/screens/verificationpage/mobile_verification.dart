import 'package:flutter/material.dart';
import 'package:village_app/view/screens/otppage/otp_screen.dart';
import 'package:village_app/view/widgets/button_widget.dart';
import 'package:village_app/view/widgets/dialog_screen.dart';

class MobileNumberScreen extends StatefulWidget {
  final bool userDataWidget;
  const MobileNumberScreen({super.key, this.userDataWidget = false});

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  @override
  void initState() {
    super.initState();
    if (!widget.userDataWidget) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showMobileNumberDialog(context);
      });
    }
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
        title: Center(
            child: Text(
          widget.userDataWidget ? 'Phone Number' : 'What is your Phone number',
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        )),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.userDataWidget == true)
              const Text("When updating your phone number, confirmation "),
            const Text("by OTP will be required."),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth / 15,
                    top: screenHeight / 20,
                  ),
                  child: Text(
                    widget.userDataWidget
                        ? " Phone Number"
                        : "Enter Phone Number",
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
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
                          decoration: InputDecoration(
                            hintText: '+91',
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(screenWidth / 100),
                              child: Image.asset(
                                'lib/asset/img/Rectangle 116.png',
                                width: screenWidth / 20,
                                height: screenHeight / 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 35,
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
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(screenWidth / 50),
                            child: Image.asset(
                              'lib/asset/img/cancel.png',
                              width: screenWidth / 20,
                              height: screenWidth / 20,
                            ),
                          ),
                          counterText: '',
                          contentPadding: EdgeInsets.symmetric(
                            vertical: screenHeight / 65,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            Text(widget.userDataWidget
                ? ""
                : "We are send a verification code to this number"),
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
                child: widget.userDataWidget
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: screenHeight / 17,
                              width: screenWidth / 2.4,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0XFF427ECC)),
                                  borderRadius:
                                      BorderRadius.circular(screenWidth / 45)),
                              child: const Center(
                                  child: Text(
                                "Cancel",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0XFF427ECC)),
                              )),
                            ),
                          ),
                          // Update Button
                          Container(
                            height: screenHeight / 17,
                            width: screenWidth / 2.4,
                            decoration: BoxDecoration(
                                color: const Color(0XFF427ECC),
                                border:
                                    Border.all(color: const Color(0XFF427ECC)),
                                borderRadius:
                                    BorderRadius.circular(screenWidth / 45)),
                            child: const Center(
                                child: Text(
                              "Update",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            )),
                          )
                        ],
                      )
                    : ButtonWidget(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        buttonColor: const Color(0xFF427ECC),
                        text: "Continue",
                        fontSize: screenWidth / 28,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return const OtpVerificationScreen();
                            }),
                          );
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
