import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
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
        title: const Center(
          child: Text(
            'Email Address',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Update email to secure your account, and get ",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Center(
                    child: Text(
                      "occasional updates from us!",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: screenHeight / 20),
                  const Text(
                    "Email address",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: screenHeight / 80),

                  // Email Input Field with Validation
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                    ],
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0XFFD2D2D2)),
                        borderRadius: BorderRadius.circular(screenWidth / 40),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0XFF427ECC)),
                        borderRadius: BorderRadius.circular(screenWidth / 40),
                      ),
                      hintText: "Email Address",
                      hintStyle: TextStyle(
                        fontSize: screenWidth / 30,
                        color: const Color.fromARGB(255, 135, 146, 142),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an email address';
                      }
                      // Email validation with RegExp
                      if (!RegExp(
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: screenHeight / 1.7),

                  SizedBox(
                    width: double.infinity,
                    child: Row(
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
                                border:
                                    Border.all(color: const Color(0XFF427ECC)),
                                borderRadius:
                                    BorderRadius.circular(screenWidth / 45)),
                            child: const Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFF427ECC),
                                ),
                              ),
                            ),
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
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
