import 'package:flutter/material.dart';
import 'package:village_app/screens/carservicespage/carservice_screen.dart';
import 'package:village_app/screens/homepage/widget/text_widget.dart';

class TaxiServiceScreen extends StatelessWidget {
  final List<Map<String, dynamic>> officeData = [
    {'image': 'lib/asset/img/image 1.png', 'text': 'Car Service'},
    {'image': 'lib/asset/img/image 2.png', 'text': 'KSEB'},
    {'image': 'lib/asset/img/image 3.png', 'text': 'Police'},
    {'image': 'lib/asset/img/image 4.png', 'text': 'MVD'},
  ];

  TaxiServiceScreen({super.key});

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
                    "Taxi Services",
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
        child: Column(
          children: [
            HomeTextWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              text: "Total 7 Services",
              fontWeight: FontWeight.w600,
              fontSize: screenWidth / 25,
              paddingLeft: screenWidth / 20,
              paddingTop: screenHeight / 30,
            ),
            SizedBox(height: screenHeight/30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
              child: SizedBox(
                height: screenHeight / 7, // Adjusted height
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    final item = officeData[index];
                    return Padding(
                      padding: EdgeInsets.only(right: screenWidth / 30),
                      child: GestureDetector(
                        onTap: () => ontappItem(context, item['text']),
                        child: Container(
                          width: screenWidth / 4, // Adjusted width to fit 4 items
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: const Color(0XFFD9D9D9),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(screenWidth / 45),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: screenWidth / 7,
                                height: screenHeight / 12, // Adjusted height for image
                                child: Image.asset(item['image']),
                              ),
                              SizedBox(height: screenHeight / 60),
                              Text(
                                item['text'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth / 32,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: screenHeight / 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
              child: SizedBox(
                height: screenHeight / 7, // Adjusted height
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    final item = officeData[index];
                    return Padding(
                      padding: EdgeInsets.only(right: screenWidth / 30),
                      child: Container(
                        width: screenWidth / 4, // Adjusted width to fit 3 items
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: const Color(0XFFD9D9D9),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(screenWidth / 45),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: screenWidth / 7,
                              height: screenHeight / 12, // Adjusted height for image
                              child: Image.asset(item['image']),
                            ),
                            SizedBox(height: screenHeight / 60),
                            Text(
                              item['text'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: screenWidth / 32,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ontappItem(BuildContext context, String text) {
    switch (text) {
      case 'Car Service':
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CarServiceScreen();
        }));
        break;
    }
  }
}
