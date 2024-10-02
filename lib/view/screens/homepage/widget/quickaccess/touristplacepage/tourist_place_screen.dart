import 'package:flutter/material.dart';
import 'package:village_app/view/widgets/text_widget.dart';
import 'package:village_app/view/screens/homepage/widget/quickaccess/touristplacepage/tourist_spot.dart';
import 'package:village_app/view/screens/homepage/widget/quickaccess/touristplacepage/widget/touristplace_card.dart';

class TouristPlaceScreen extends StatelessWidget {
  const TouristPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tourist Places",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: screenWidth / 15),
              child: const Text(
                "Share",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF427ECC)),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            HomeTextWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                text: '3 Destinations near you',
                fontWeight: FontWeight.w500,
                fontSize: screenWidth / 23,
                paddingLeft: screenWidth / 20,
                paddingTop: screenWidth / 20),
            SizedBox(height: screenHeight / 50),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SpecificTouristSpot();
                }));
              },
              child: TouristCardWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                icontext: '10 AM to 6 PM',
                imagePath: 'lib/asset/img/Rectangle 210.png',
                titleText:
                    'കുതിരവട്ടം പപ്പു മുതൽ എംടി വരെ; പുതുമുഖം തീർത്ത് കോഴിക്കോട് ബീച്ച്.',
                locationText: 'Palarivattom, Calicut',
              ),
            ),
            TouristCardWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              icontext: 'Full day',
              imagePath: 'lib/asset/img/Rectangle 213.png',
              titleText:
                  'കുതിരവട്ടം പപ്പു മുതൽ എംടി വരെ; പുതുമുഖം തീർത്ത് കോഴിക്കോട് ബീച്ച്.',
              locationText: '3517 W. Gray St. Utica, Pennsylvania 57867',
            ),
            TouristCardWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              icontext: '10 AM to 6 PM',
              imagePath: 'lib/asset/img/Rectangle 216.png',
              titleText:
                  'കുതിരവട്ടം പപ്പു മുതൽ എംടി വരെ; പുതുമുഖം തീർത്ത് കോഴിക്കോട് ബീച്ച്.',
              locationText: '3891 Ranchview Dr. Richardson, California 62639',
            )
          ],
        ),
      )),
    );
  }
}
