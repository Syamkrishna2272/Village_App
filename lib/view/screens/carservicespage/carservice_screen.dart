import 'package:flutter/material.dart';
import 'package:village_app/view/screens/carservicespage/contact_detailspage/contact_screen.dart';
import 'package:village_app/view/screens/homepage/widget/text_widget.dart';

class CarServiceScreen extends StatelessWidget {
  final List<Map<String, dynamic>> contactData = [
    {'image': 'lib/asset/img/Ellipse 18.png', 'text': 'Robert Fox'},
    {'image': 'lib/asset/img/Ellipse 24.png', 'text': 'Leslie Alexander Lor'},
    {'image': 'lib/asset/img/Ellipse 25.png', 'text': 'Kristin Watson'},
    {'image': 'lib/asset/img/Ellipse 30.png', 'text': 'Ralph Edwards'},
    {'image': 'lib/asset/img/Ellipse 31.png', 'text': 'Ralph Edwards'},
    {'image': 'lib/asset/img/Ellipse 32.png', 'text': 'Leslie Alexander'},
    {'image': 'lib/asset/img/Ellipse 39.png', 'text': 'Jane Cooper'},
    {'image': 'lib/asset/img/Ellipse 52.png', 'text': 'Robert Fox'},
  ];

  CarServiceScreen({super.key});

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
                    "Car Services",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
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
            ),
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
                text: "103 Contacts",
                fontWeight: FontWeight.w600,
                fontSize: screenWidth / 25,
                paddingLeft: screenWidth / 20,
                paddingTop: screenHeight / 30,
              ),
              ListView.builder(
                itemCount: contactData.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final contact = contactData[index];

                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth / 35,
                        vertical: screenWidth / 85),
                    child: GestureDetector(
                      onTap: () => ontappItem(
                        context,
                        contact['text'],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0XFFF4F4F4),
                          borderRadius: BorderRadius.circular(screenWidth / 45),
                        ),
                        height: screenHeight / 11,
                        width: screenWidth,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(screenWidth / 28),
                              child: CircleAvatar(
                                radius: screenWidth / 15,
                                backgroundImage: AssetImage(contact['image']),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight,
                              width: screenWidth / 2.5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    contact['text'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: screenWidth / 25,
                                    ),
                                    overflow: TextOverflow.ellipsis, 
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: screenWidth / 16),
                            CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 166, 193, 228),
                              child: Image.asset('lib/asset/img/Group 625.png'),
                            ),
                            SizedBox(width: screenWidth / 38),
                            CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 188, 238, 207),
                              child: Image.asset('lib/asset/img/Group.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: screenHeight / 10,
              ),
              SizedBox(
                height: screenHeight / 25,
                width: screenWidth / 5,
                child: Image.asset('lib/asset/img/surface1.png'),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: screenWidth / 15),
                child: Column(
                  children: [
                    Text(
                      "These contacts are shared exclusively for social services. ",
                      style: TextStyle(
                          fontSize: screenWidth / 30,
                          color: const Color.fromARGB(255, 135, 146, 142)),
                    ),
                    Text("Please refrain from misuse.",
                        style: TextStyle(
                            fontSize: screenWidth / 30,
                            color: const Color.fromARGB(255, 135, 146, 142))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void ontappItem(BuildContext context, String text) {
    switch (text) {
      case 'Robert Fox':
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const CarContactScreen();
        }));
        break;
    }
  }
}
