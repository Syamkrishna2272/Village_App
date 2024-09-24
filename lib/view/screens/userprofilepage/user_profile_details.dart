import 'package:flutter/material.dart';
import 'package:village_app/view/screens/userprofilepage/widget/profile_main_container.dart';
import 'package:village_app/view/screens/userprofilepage/widget/second_container.dart';
import 'package:village_app/view/screens/userprofilepage/widget/third_container.dart';
import 'package:village_app/view/widgets/button_widget.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

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
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Icon(
              Icons.notifications,
              color: Colors.black,
              size: screenWidth / 12,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserProfileMainContainer(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth / 25, right: screenWidth / 25),
                child: SizedBox(
                  width: screenWidth,
                  child: ButtonWidget(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    buttonColor: const Color(0XFF2568EF),
                    text: "Club Details",
                    images: Image.asset('lib/asset/img/Group 661.png'),
                    fontSize: screenWidth / 25,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ),
              SecondContainer(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              ThirdContainer(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: screenHeight / 28,
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
                    text: "Logout",
                    fontSize: screenWidth / 25,
                    textColor: const Color(0XFFFF1D15),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight / 28,
              ),
              Text(
                "Version 12.01.21 (35164131)",
                style: TextStyle(
                    fontSize: screenWidth / 35, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: screenHeight / 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
