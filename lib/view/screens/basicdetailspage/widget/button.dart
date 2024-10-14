import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:village_app/view/screens/basicdetailspage/model/userdetails_model.dart';
import 'package:village_app/view/screens/basicdetailspage/userdetails.dart';
import 'package:village_app/view/screens/homepage/view/home_screen.dart';
import 'package:village_app/view/widgets/button_widget.dart';

class Button extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final UserDetailsScreen widget;
  final double screenHeight;
  final double screenWidth;
  final TextEditingController firstnameController;
  final TextEditingController lastnameController;
  final TextEditingController emailController;

  const Button({
    super.key,
    required this.widget,
    required this.screenHeight,
    required this.screenWidth,
    required this.formKey,
    required this.firstnameController,
    required this.lastnameController,
    required this.emailController,
  });

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
              onPressed: () async {
                if (formKey.currentState?.validate() ?? false) {
                  try {
                    final box = Hive.box<UserDetails>('userDetails');
                    // Check if box is open
                    if (!box.isOpen) {
                      print("Box is not open. Opening it now...");
                      await Hive.openBox('userDetails');
                    }

                    // Fetch data from controllers
                    String firstname = firstnameController.text;
                    String lastname = lastnameController.text;
                    String email = emailController.text;

                    print("Saving: $firstname, $lastname, $email");
                    final userdetails = UserDetails(
                        firstname: firstname,
                        lastname: lastname,
                        email: email.isNotEmpty ? email : null);
                        
                    await box.put('user', userdetails);
                    final storedUserDetails = box.get('user');

                    print('Stored Data: ${storedUserDetails?.firstname},'
                        '${storedUserDetails?.lastname},'
                        '${storedUserDetails?.email}');

                    // Navigate to HomeScreen
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }),
                    );
                  } catch (e) {
                    print("Error saving data to Hive: $e");
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Padding(
                        padding: EdgeInsets.all(screenWidth / 35),
                        child: Text(
                          'Please complete all required fields',
                          style: TextStyle(
                              fontSize: screenWidth / 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      backgroundColor: Colors.red,
                      duration: const Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.all(screenWidth / 15),
                    ),
                  );
                }
              },

              // onPressed: () async {
              //   if (formKey.currentState?.validate() ?? false) {
              //     final box = Hive.box('userDetails');

              //     // Fetch data from controllers
              //     String firstname = firstnameController.text;
              //     String lastname = lastnameController.text;
              //     String email = emailController.text;

              //     print("success: $firstname, $lastname, $email");

              //     // Save data to Hive box
              //     await box.add(firstname);
              //     await box.add(lastname);
              //     if (email.isNotEmpty) {
              //       await box.put('email', email); // Only store if not empty
              //     }
              //     Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) {
              //         return const HomeScreen();
              //       }),
              //     );
              //   } else {
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       SnackBar(
              //         content: Padding(
              //           padding: EdgeInsets.all(screenWidth / 35),
              //           child: Text(
              //             'Please complete all required fields',
              //             style: TextStyle(
              //                 fontSize: screenWidth / 25,
              //                 fontWeight: FontWeight.w500),
              //           ),
              //         ),
              //         backgroundColor: Colors.red,
              //         duration: const Duration(seconds: 2),
              //         behavior: SnackBarBehavior.floating,
              //         margin: EdgeInsets.all(screenWidth / 15),
              //       ),
              //     );
              //   }
              // },
            ),
    );
  }
}
