import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:village_app/screens/homepage/home_screen.dart';
import 'package:village_app/screens/widgets/button_widget.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  String _selectedGender = 'Male';

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
            'Basic Details',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
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
              TextFormField(
                textCapitalization: TextCapitalization.words,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(screenWidth / 40),
                  ),
                  hintText: "First Name",
                  hintStyle: TextStyle(
                    fontSize: screenWidth / 30,
                    color: const Color.fromARGB(255, 135, 146, 142),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 25),
              const Text(
                "Enter Last Name",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              TextFormField(
                textCapitalization: TextCapitalization.words,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(screenWidth / 40),
                  ),
                  hintText: "Last Name (mandatory)",
                  hintStyle: TextStyle(
                    fontSize: screenWidth / 30,
                    color: const Color.fromARGB(255, 135, 146, 142),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 25),
              const Text(
                "Select Gender",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(screenWidth / 40),
                        color: Colors.transparent,
                      ),
                      width: 20,
                      height: 50,
                      child: ListTile(
                        title: const Text('Male'),
                        leading: Radio<String>(
                          value: 'Male',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth / 30),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(screenWidth / 40),
                        color: Colors.transparent,
                      ),
                      width: 15,
                      height: 50,
                      child: ListTile(
                        title: const Text('Female'),
                        leading: Radio<String>(
                          value: 'Female',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight/3.4,),
              SizedBox( 
                width: double.infinity,
                child: ButtonWidget(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    buttonColor: const Color(0xFF427ECC),
                    text: "Continue",
                    fontSize: screenWidth / 28,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const HomeScreen();
                      }));
                    },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
