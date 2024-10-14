import 'package:flutter/material.dart';
import 'package:village_app/view/screens/basicdetailspage/widget/button.dart';
import 'package:village_app/view/screens/basicdetailspage/widget/emailform3.dart';
import 'package:village_app/view/screens/basicdetailspage/widget/textform1.dart';
import 'package:village_app/view/screens/basicdetailspage/widget/textform2.dart';

class UserDetailsScreen extends StatefulWidget {
  final bool fromUserDataWidget;

  const UserDetailsScreen({super.key, this.fromUserDataWidget = false});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  final formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            widget.fromUserDataWidget ? 'Full Name' : 'Basic Details',
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "This helps us understand you better. Please fill",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Center(
                    child: Text(
                      "with true information.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: screenHeight / 20),
                  const Text(
                    "Enter First Name",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: screenHeight / 80),

                  // First name text form field
                  TextFormField1(
                    controller: firstNameController,
                    screenWidth: screenWidth,
                  ),

                  SizedBox(height: screenHeight / 35),
                  const Text(
                    "Enter Last Name",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: screenHeight / 80),

                  // Last name text form field
                  TextFormField2(
                    controller: lastNameController,
                    screenWidth: screenWidth,
                  ),

                  SizedBox(height: screenHeight / 35),
                  const Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: screenHeight / 80),

                  // Email text form field
                  EmailFormField(
                    controller: emailController,
                    screenWidth: screenWidth,
                  ),

                  SizedBox(height: screenHeight / 3.4),

                  // Button widget
                  Button(
                    widget: widget,
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    formKey: formKey,
                    firstnameController: firstNameController,
                    lastnameController: lastNameController,
                    emailController: emailController,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
