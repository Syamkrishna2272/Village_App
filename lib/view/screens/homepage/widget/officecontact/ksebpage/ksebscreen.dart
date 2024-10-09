import 'package:flutter/material.dart';
import 'package:village_app/view/screens/homepage/widget/officecontact/ksebpage/ksebcard_widget.dart';
import 'package:village_app/view/widgets/text_widget.dart';

class KsebScreen extends StatelessWidget {
  const KsebScreen({super.key});

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
                    "KSEB",
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
            SizedBox(width: screenWidth / 15),
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
              HomeTextWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                text: "Total 7 Offices",
                fontWeight: FontWeight.w600,
                fontSize: screenWidth / 25,
                paddingLeft: screenWidth / 20,
                paddingTop: screenHeight / 65,
              ),
              SizedBox(
                height: screenHeight / 45,
              ),
              KsebCardWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: screenHeight / 75,
              ),
              KsebCardWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: screenHeight / 75,
              ),
              KsebCardWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(
                height: screenHeight / 75,
              ),
              KsebCardWidget(
                  screenWidth: screenWidth, screenHeight: screenHeight)
            ],
          ),
        ),
      ),
    );
  }
}
