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
        title: Center(
            child: Text(
          widget.userDataWidget
              ? 'Phone Number ?'
              : 'What is your Phone number',
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
                  child: Text(widget.userDataWidget
                      ? " Phone Number"
                      : "Enter Phone Number"),
                ),
                SizedBox(
                  height: screenHeight / 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 15),
                      child: widget.userDataWidget
                          ? SizedBox(
                              height: screenHeight / 15,
                              width: screenWidth / 4.2,
                              child: TextFormField(
                                readOnly: true,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          screenWidth / 45),
                                      borderSide: const BorderSide(
                                          color: Color(0XFFD2D2D2))),
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
                            )
                          : SizedBox(
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
                      width: screenWidth / 15,
                    ),
                    SizedBox(
                      height: screenHeight / 25,
                      width: screenWidth / 1.8,
                      child: widget.userDataWidget
                          ? TextField(
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: screenWidth / 23),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(screenWidth / 45),
                                    borderSide: const BorderSide(
                                        color: Color(0XFFD2D2D2))),
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
                            )
                          : TextField(
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
