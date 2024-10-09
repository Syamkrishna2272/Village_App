import 'package:flutter/material.dart';
import 'package:village_app/view/screens/basicdetailspage/userdetails.dart';
import 'package:village_app/view/screens/homepage/view/home_screen.dart';
import 'package:village_app/view/widgets/button_widget.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.widget,
    required this.screenHeight,
    required this.screenWidth,
  });

  final UserDetailsScreen widget;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: widget.fromUserDataWidget
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
                        border: Border.all(color: const Color(0XFF427ECC)),
                        borderRadius: BorderRadius.circular(screenWidth / 45)),
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
                      border: Border.all(color: const Color(0XFF427ECC)),
                      borderRadius: BorderRadius.circular(screenWidth / 45)),
                  child: const Center(
                      child: Text(
                    "Update",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white),
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
                    return const HomeScreen();
                  }),
                );
              },
            ),
    );
  }
}