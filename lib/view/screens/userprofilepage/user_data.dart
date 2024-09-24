import 'package:flutter/material.dart';
import 'package:village_app/view/screens/userprofilepage/widget/user_data_widget.dart';
import 'package:village_app/view/widgets/button_widget.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  bool donateblood = false;
  bool notification = false;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: screenHeight / 10,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: screenWidth / 15,
            ),
            SizedBox(width: screenWidth / 40),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profile Details",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth / 20),
                  )
                ],
              ),
            ),
            Icon(
              Icons.notifications,
              color: Colors.black,
              size: screenWidth / 15,
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          UserDataWidget(screenWidth: screenWidth, screenHeight: screenHeight),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth / 25, right: screenWidth / 25),
            child: Container(
              height: screenHeight / 12,
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth / 45),
                  color: const Color(0XFFF7F4F6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 18),
                    child: const Text(
                      "Donate blood",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      value: donateblood,
                      onChanged: (value) {
                        setState(() {
                          donateblood = value;
                        });
                      },
                      activeColor: const Color(0XFF2568EF),
                    ),
                  )
                ],
              ),
            ),
          ),
          if (donateblood)
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth / 25, right: screenWidth / 25),
              child: Container(
                height: screenHeight / 12,
                width: screenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth / 45),
                    color: const Color(0XFFF7F4F6)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 18),
                      child: const Text(
                        "Add your blood group",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(width: screenWidth / 3),
                    Text(
                      "A+ve",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth / 25),
                    ),
                    const Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth / 25,
                right: screenWidth / 25,
                top: screenHeight / 65),
            child: Container(
              height: screenHeight / 12,
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth / 45),
                  color: const Color(0XFFF7F4F6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 18),
                    child: const Text(
                      "Notification Preference",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      value: notification,
                      onChanged: (value) {
                        setState(() {
                          notification = value;
                        });
                      },
                      activeColor: const Color(0XFF2568EF),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight / 20,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth / 25, right: screenWidth / 25),
            child: SizedBox(
              width: screenWidth,
              child: ButtonWidget(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                buttonColor: const Color.fromARGB(255, 247, 188, 186),
                text: "Delete Account",
                fontSize: screenWidth / 25,
                textColor: const Color(0XFFFF1D15),
                onPressed: () {},
              ),
            ),
          ),
        ],
      )),
    );
  }
}
