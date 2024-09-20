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

    final List<String> imagePaths = [
      'lib/asset/img/coolest-places-in-kerala-visit-during-summer.webp',
      'lib/asset/img/Jatayu-National-Park-Kerala-1024x512_Snapseed-5aafa43eff1b780036c19082.jpg',
      'lib/asset/img/Idukki.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // toolbarHeight: screenHeight / 10,
        title: Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              color: const Color(0xFF427ECC),
              size: screenWidth / 12,
            ),
            // SizedBox(width: screenWidth / 40),
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
              SizedBox(height: screenHeight / 90),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth / 25, right: screenWidth / 25),
                child: Card(
                  child: Container(
                      height: screenHeight / 8,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(screenWidth / 40),
                      ),
                      child: CarouselSlider(
                        items: imagePaths.map((imagePath) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: screenWidth,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(screenWidth / 40),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: screenHeight / 6,
                                      width: screenWidth / 3,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            screenWidth / 40),
                                        child: Image.asset(
                                          imagePath,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: screenWidth / 30),

                                    // Text container
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: screenHeight / 80),
                                            child: Container(
                                              height: screenHeight / 35,
                                              width: screenWidth / 5,
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          screenWidth / 65)),
                                              child: Center(
                                                  child: Text(
                                                "HOT NEWS",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: screenWidth / 32,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                            ),
                                          ),
                                          SizedBox(height: screenHeight / 100),
                                          Text(
                                            "'I recommend to stay calm!' | Jurgen Klopp  ",
                                            style: TextStyle(
                                              fontSize: screenWidth / 32,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }).toList(),
                        options: CarouselOptions(
                          height: screenHeight / 3, 
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.95,
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
                      )),
                ),
              ),
              SizedBox(height: screenHeight / 50),
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
              // SizedBox(
              //   height: screenHeight / 25,
              // ),
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
              // SizedBox(
              //   height: screenHeight / 35,
              // ),
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
