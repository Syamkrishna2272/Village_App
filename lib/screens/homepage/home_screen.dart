import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:village_app/screens/homepage/widget/job_widget.dart';
import 'package:village_app/screens/homepage/widget/office_widget.dart';
import 'package:village_app/screens/homepage/widget/quick_widget.dart';
import 'package:village_app/screens/homepage/widget/text_widget.dart';
import 'package:village_app/screens/homepage/widget/home_screen_servicewidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  get quickaccessData => null;

  @override
  Widget build(BuildContext context) {
      final mediaQuery = MediaQuery.of(context);
      final screenHeight = mediaQuery.size.height;
      final screenWidth = mediaQuery.size.width;

    final items = [
      Image.asset(
          'lib/asset/img/coolest-places-in-kerala-visit-during-summer.webp'),
      Image.asset(
          'lib/asset/img/Jatayu-National-Park-Kerala-1024x512_Snapseed-5aafa43eff1b780036c19082.jpg'),
      Image.asset('lib/asset/img/Idukki.jpg')
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: screenHeight / 10,
        title: Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              color: const Color(0xFF427ECC),
              size: screenWidth / 8,
            ),
            SizedBox(width: screenWidth / 40),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                      fontSize: screenWidth / 32,
                    ),
                  ),
                  const Text(
                    "Katharammal",
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
            SizedBox(width: screenWidth / 40),
            const CircleAvatar(
              backgroundImage: AssetImage('lib/asset/img/Ellipse 52.png'),
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
                      image: AssetImage('lib/asset/img/Group 603.png'),
                      fit: BoxFit.cover),
                ),
                width: screenWidth,
                height: screenHeight / 4.3,
              ),
              SizedBox(height: screenHeight / 45),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth / 25, right: screenWidth / 25),
                child: Container(
                  height: screenHeight / 8,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth / 40),
                  ),
                  child: CarouselSlider(
                    items: items,
                    options: CarouselOptions(
                      height: screenHeight / 8,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 32),
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
              SizedBox(height: screenHeight / 40),
              QuickAccessWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: screenHeight / 25,
              ),
              HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Office Contact",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 25,
                  paddingLeft: screenWidth / 20,
                  paddingTop: screenHeight / 30),
              SizedBox(height: screenHeight / 35),
              OfficeWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: screenHeight / 35,
              ),
              HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Job or Professional",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 25,
                  paddingLeft: screenWidth / 20,
                  paddingTop: screenHeight / 30),
              SizedBox(height: screenHeight / 35),
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
