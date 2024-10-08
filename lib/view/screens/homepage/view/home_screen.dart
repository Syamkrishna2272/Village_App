import 'package:flutter/material.dart';
import 'package:village_app/view/widgets/carousel_widget.dart';
import 'package:village_app/view/screens/homepage/widget/joborprofessional/job_widget.dart';
import 'package:village_app/view/screens/homepage/widget/officecontact/office_widget.dart';
import 'package:village_app/view/screens/homepage/widget/quickaccess/quick_widget.dart';
import 'package:village_app/view/widgets/text_widget.dart';
import 'package:village_app/view/screens/homepage/widget/servicepage/service_widget.dart';
import 'package:village_app/view/screens/userprofilepage/user_profile_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  get quickaccessData => null;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    final List<String> imagePaths = [
      'lib/asset/img/coolest-places-in-kerala-visit-during-summer.webp',
      'lib/asset/img/Jatayu-National-Park-Kerala-1024x512_Snapseed-5aafa43eff1b780036c19082.jpg',
      'lib/asset/img/Idukki.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 252, 247),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              color: const Color(0xFF427ECC),
              size: screenWidth / 12,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                      fontSize: screenWidth / 36,
                    ),
                  ),
                  Text(
                    "Katharammal",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth / 25),
                  )
                ],
              ),
            ),
            Icon(
              Icons.notifications,
              color: Colors.black,
              size: screenWidth / 15,
            ),
            SizedBox(width: screenWidth / 40),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const UserProfileScreen(); 
                }));
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('lib/asset/img/Ellipse 52.png'),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/asset/img/Group 603 (1).png'),
                      fit: BoxFit.cover),
                ),
                width: screenWidth,
                height: screenHeight / 4.3,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth / 25, right: screenWidth / 25),
                child: Padding(
                  padding: EdgeInsets.all(screenWidth / 45),
                  child: Container(
                      height: screenHeight / 10,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: const Color(0XFFF4F4F4),
                        borderRadius: BorderRadius.circular(screenWidth / 45),
                      ),
                      child: CarouselWidget(
                          imagePaths: imagePaths,
                          screenWidth: screenWidth,
                          screenHeight: screenHeight)),
                ),
              ),
              SizedBox(height: screenHeight / 45),
              ServiceWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Quick access",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 25,
                  paddingLeft: screenWidth / 20,
                  paddingTop: screenHeight / 30),
              SizedBox(height: screenHeight / 80),
              QuickAccessWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Office Contact",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 25,
                  paddingLeft: screenWidth / 20,
                  paddingTop: screenHeight / 30),
              SizedBox(height: screenHeight / 80),
              OfficeWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Job or Professional",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 25,
                  paddingLeft: screenWidth / 20,
                  paddingTop: screenHeight / 30),
              SizedBox(height: screenHeight / 80),
              JobWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
              SizedBox(
                height: screenHeight / 8,
              ),
              const Text("Dhoomatech.com, All rights reserved"),
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
