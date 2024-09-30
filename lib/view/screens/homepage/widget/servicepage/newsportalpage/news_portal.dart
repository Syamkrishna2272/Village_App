import 'package:flutter/material.dart';
import 'package:village_app/view/screens/homepage/widget/servicepage/news_description.dart';
import 'package:village_app/view/screens/homepage/widget/servicepage/widget/newsportal_card_widget.dart';

class NewsPortalScreen extends StatelessWidget {
  const NewsPortalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: screenHeight / 10,
          title: Row(
            children: [
              SizedBox(width: screenWidth / 40),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "News Portal",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.notifications,
                color: Colors.black,
                size: screenWidth / 13,
              ),
              SizedBox(width: screenWidth / 15),
              const CircleAvatar(
                backgroundImage: AssetImage('lib/asset/img/Ellipse 52.png'),
              )
            ],
          ),
          bottom: const TabBar(
            labelPadding: EdgeInsets.symmetric(),
            tabs: [
              Tab(
                text: "Hot News",
              ),
              Tab(
                text: "Katharammal News",
              ),
              Tab(
                text: "Village Shorts",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Text("Sample screen"),
            ),
            // Add SingleChildScrollView here to make this section scrollable
            SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const NewsDescriptionScreen();
                      }));
                    },
                    child: NewsCardWidget(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      imagePath: 'lib/asset/img/Rectangle 170.png',
                    ),
                  ),
                  SizedBox(height: screenHeight / 100),
                  NewsCardWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    imagePath: 'lib/asset/img/Rectangle 168.png',
                  ),
                  SizedBox(height: screenHeight / 100),
                  NewsCardWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    imagePath: 'lib/asset/img/Rectangle 174.png',
                  ),
                  SizedBox(height: screenHeight / 100),
                  NewsCardWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    imagePath: 'lib/asset/img/Rectangle 173.png',
                  ),
                  SizedBox(height: screenHeight / 100),
                  NewsCardWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    imagePath: 'lib/asset/img/Rectangle 170.png',
                  ),
                ],
              ),
            ),
            const Center(child: Text('Sample Screen')),
          ],
        ),
      ),
    );
  }
}
