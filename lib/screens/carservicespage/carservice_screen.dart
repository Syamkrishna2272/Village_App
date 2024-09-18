import 'package:flutter/material.dart';
import 'package:village_app/screens/carservicespage/contact_detailspage/contact_screen.dart';
import 'package:village_app/screens/homepage/widget/text_widget.dart';

class CarServiceScreen extends StatelessWidget {
  final List<Map<String, dynamic>> contactData = [
    {'image': 'lib/asset/img/Ellipse 18.png', 'text': 'Robert Fox'},
    {'image': 'lib/asset/img/Ellipse 24.png', 'text': 'Jane Cooper'},
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
            Expanded(
              child: ListView.builder(
                itemCount: contactData.length,
                itemBuilder: (context, index) {
                  final contact = contactData[index];

                  return Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth / 19,
                      right: screenWidth / 19,
                      top: screenWidth / 35,
                    ),
                    child: GestureDetector(
                      onTap: () => ontappItem(context, contact['text']),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth / 40),
                          ),
                          height: screenHeight / 10,
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
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor:
                                    const Color.fromARGB(255, 166, 193, 228),
                                child: Icon(Icons.wechat_sharp,
                                    size: screenWidth / 13,
                                    color: const Color(0XFF427ECC)),
                              ),
                              SizedBox(width: screenWidth / 20),
                              const CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 188, 238, 207),
                                child:
                                    Icon(Icons.phone, color: Color(0XFF23B158)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
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
                    style: TextStyle(fontSize: screenWidth / 30),
                  ),
                  Text("Please refrain from misuse.",
                      style: TextStyle(fontSize: screenWidth / 30)),
                ],
              ),
            )
          ],
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
