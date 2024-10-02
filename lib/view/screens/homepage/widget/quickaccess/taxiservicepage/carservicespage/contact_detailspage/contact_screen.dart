import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:village_app/view/screens/homepage/widget/quickaccess/taxiservicepage/carservicespage/contact_detailspage/tabbar_widget.dart';

class CarContactScreen extends StatelessWidget {
  const CarContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    final List<Widget> avatarIcons = [
      Icon(MdiIcons.webSync,
          color: const Color(0XFF427ECC), size: screenWidth / 12),
      Icon(MdiIcons.whatsapp,
          color: const Color(0XFF427ECC), size: screenWidth / 12),
      Icon(MdiIcons.instagram,
          color: const Color(0XFF427ECC), size: screenWidth / 12),
      Icon(MdiIcons.facebook,
          color: const Color(0XFF427ECC), size: screenWidth / 12),
      Icon(MdiIcons.beach,
          color: const Color(0XFF427ECC), size: screenWidth / 12)
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: screenHeight / 10,
          title: Row(
            children: [
              Icon(Icons.arrow_back_ios, size: screenWidth / 15),
              SizedBox(width: screenWidth / 40),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
              Icon(Icons.notifications,
                  color: Colors.black, size: screenWidth / 12),
              SizedBox(width: screenWidth / 15),
              const CircleAvatar(
                backgroundImage: AssetImage('lib/asset/img/Ellipse 52.png'),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: screenHeight / 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth / 30),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: screenWidth / 10,
                          backgroundImage:
                              const AssetImage('lib/asset/img/Ellipse 39.png'),
                        ),
                        SizedBox(width: screenWidth / 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Leslie Alexander Lorem.. ",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: screenWidth / 25,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: screenHeight / 80),
                              Row(
                                children: [
                                  Image.asset('lib/asset/img/Frame (1).png'),
                                  SizedBox(width: screenWidth / 80),
                                  Text(
                                    "INTERIAL DESIGNER",
                                    style: TextStyle(
                                      fontSize: screenWidth / 30,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: screenHeight / 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 195, 217, 246),
                            borderRadius:
                                BorderRadius.circular(screenWidth / 40)),
                        width: screenWidth / 2.4,
                        height: screenHeight / 18,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth / 15),
                              child: Image.asset('lib/asset/img/Group 625.png'),
                            ),
                            SizedBox(width: screenWidth / 28),
                            Text("Message",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: screenWidth / 23))
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 200, 246, 217),
                            borderRadius:
                                BorderRadius.circular(screenWidth / 40)),
                        width: screenWidth / 2.4,
                        height: screenHeight / 18,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth / 15),
                              child: Image.asset('lib/asset/img/Group.png'),
                            ),
                            SizedBox(width: screenWidth / 28),
                            Text("Call Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: screenWidth / 23))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight / 42),
                  const Text(
                      "Hi,  enim ad minim veniam, quis nostrud exercitat"),
                  const Text("ullamco laboris nisi ut aliquip ex ea com."),
                  SizedBox(height: screenHeight / 42),
                  const Row(
                    children: [
                      Icon(Icons.attach_file),
                      Text("Joined on 12 April 2024")
                    ],
                  ),
                  SizedBox(height: screenHeight / 42),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(avatarIcons.length, (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: screenWidth / 30),
                          child: Container(
                            width: screenWidth / 6.5,
                            height: screenWidth / 6.5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0XFFD9E5F5),
                                width: 1,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: avatarIcons[index],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: screenHeight / 35),
                  TabBar(
                    tabs: const [
                      Tab(text: "Details"),
                      Tab(text: "Portfolio"),
                      Tab(text: "Jobs"),
                    ],
                    indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(screenWidth / 15),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.blue,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth / 25,
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: screenWidth / 25,
                    ),
                    dividerColor: Colors.transparent,
                  ),
                  // SizedBox(height: screenHeight / 30),
                  TabbarWidget(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
