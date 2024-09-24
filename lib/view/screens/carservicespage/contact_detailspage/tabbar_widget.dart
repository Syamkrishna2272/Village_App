import 'package:flutter/material.dart';
import 'package:village_app/view/screens/homepage/widget/text_widget.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'lib/asset/img/Rectangle 182.png',
      'lib/asset/img/Rectangle 191.png',
      'lib/asset/img/Rectangle 192.png',
      'lib/asset/img/Rectangle 193.png',
      'lib/asset/img/Rectangle 194.png'
    ];

    final List<Map<String, dynamic>> contactData = [
      {
        'image': 'lib/asset/img/Ellipse 18.png',
        'text': 'Robert Fox',
        'email': 'robert.fox@example.com'
      },
      {
        'image': 'lib/asset/img/Ellipse 24.png',
        'text': 'Jane Cooper',
        'email': 'jane.cooper@example.com'
      },
      {
        'image': 'lib/asset/img/Ellipse 25.png',
        'text': 'Kristin Watson',
        'email': 'kristin.watson@exam.com'
      },
    ];

    return SizedBox(
      height: screenHeight,
      child: TabBarView(
        children: [
          SingleChildScrollView(
            child: Column(
              //Details Tab
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "About",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 22,
                  paddingLeft: screenWidth / 62,
                  paddingTop: screenHeight / 30,
                ),
                SizedBox(height: screenHeight / 50),
                const Text("Hi,  enim ad minim veniam, quis nostrud exercitat"),
                const Text("ullamco laboris nisi ut aliquip ex ea com."),
                const Divider(),
                HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Work",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 22,
                  paddingLeft: screenWidth / 62,
                  paddingTop: screenHeight / 30,
                ),
                SizedBox(height: screenHeight / 50),
                const Text("Graphic Designer at Viral Mafia"),
                const Divider(),
                HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Higher Education",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 22,
                  paddingLeft: screenWidth / 62,
                  paddingTop: screenHeight / 30,
                ),
                SizedBox(height: screenHeight / 50),
                const Text("SSLC"),
                const Text("MJ Higher Secondary School, Elettil"),
                const Divider(),
                HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Skills",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 22,
                  paddingLeft: screenWidth / 62,
                  paddingTop: screenHeight / 30,
                ),
                SizedBox(height: screenHeight / 50),
                Text("• Graphic Designer",
                    style: TextStyle(fontSize: screenWidth / 25,fontWeight: FontWeight.w500)),
                Text("• Content Creation Management",
                    style: TextStyle(fontSize: screenWidth / 25,fontWeight: FontWeight.w500)),
                Text("• Search engine optimization",
                    style: TextStyle(fontSize: screenWidth / 25,fontWeight: FontWeight.w500)),
                Text("• Social Media Manage",
                    style: TextStyle(fontSize: screenWidth / 25,fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          GridView.builder(
            //Portfolio Tab
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return GridTile(
                child: Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Container(
            //Job Tab
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenWidth / 45),
            ),
            width: screenWidth,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(screenWidth / 45),
                        topRight: Radius.circular(screenWidth / 45)),
                  ),
                  height: screenHeight / 10,
                  width: screenWidth,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight / 41),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Digital Marketing Executive",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Image.asset('lib/asset/img/Group (1).png'),
                            Text(
                              "INR. 5000/Hour",
                              style: TextStyle(
                                  fontSize: screenWidth / 35,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth / 25),
                        child: Row(
                          children: [
                            const Text("Full Time",
                                style: TextStyle(color: Colors.white)),
                            SizedBox(width: screenWidth / 2.3),
                            const Icon(Icons.location_on_outlined,
                                color: Color.fromARGB(255, 209, 206, 206)),
                            Text(
                              "Thalassery",
                              style: TextStyle(
                                  fontSize: screenWidth / 33,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 244, 240, 240),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(screenWidth / 45),
                        bottomRight: Radius.circular(screenWidth / 45)),
                  ),
                  width: screenWidth,
                  height: screenHeight / 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(screenWidth / 45),
                        child: Text(
                          "Sed ut perspiciatis unde omnis iste natus error sit\n"
                          "voluptatem accusantium doloremque laudantium,\n"
                          "to Sed ut perspiciatis unde omnis.",
                          style: TextStyle(
                            fontSize: screenWidth / 28,
                          ),
                          textAlign: TextAlign.left,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 227, 225, 225),
                      ),
                      // Constrain ListView.builder's height
                      Expanded(
                        child: ListView.builder(
                          itemCount: contactData.length,
                          itemBuilder: (context, index) {
                            final contact = contactData[index];
                            return Padding(
                              padding: EdgeInsets.only(
                                left: screenWidth / 25,
                                right: screenWidth / 25,
                                top: screenWidth / 35,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                        backgroundImage:
                                            AssetImage(contact['image']),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight,
                                      width: screenWidth / 2.5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            contact['text'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: screenWidth / 25,
                                            ),
                                          ),
                                          Text(
                                            contact['email'],
                                            style: TextStyle(
                                              fontSize: screenWidth / 32,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: screenWidth / 28),
                                    CircleAvatar(
                                      backgroundColor: const Color.fromARGB(
                                          255, 188, 238, 207),
                                      child: Image.asset(
                                          'lib/asset/img/Group.png'),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
