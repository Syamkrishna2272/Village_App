import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:village_app/screens/widgets/home_screen_servicewidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

    final List<Map<String, dynamic>> iconData = [
      {'icon': MdiIcons.bagSuitcase, 'text': 'Jobs orProfessions'},
      {'icon': MdiIcons.taxi, 'text': 'TaxiServices'},
      {'icon': MdiIcons.bus, 'text': 'BusServices'},
      {'icon': Icons.home_outlined, 'text': 'Shops andBusiness'},
      {'icon': Icons.tour, 'text': 'Nearby TouristPlaces'},
      {'icon': MdiIcons.earbudsOutline, 'text': 'OfficeContacts'},
      {'icon': MdiIcons.ambulance, 'text': 'Emergency'},
      {'icon': Icons.video_call_outlined, 'text': 'VillageShorts'},
      {'icon': Icons.calendar_month_outlined, 'text': 'EventCalender'},
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
                    color: Colors.amber,
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
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth / 20, top: screenHeight / 30),
                    child: Text(
                      "Quick access",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth / 25,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: iconData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: screenWidth / 30,
                    mainAxisSpacing: screenHeight / 50,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    final item = iconData[index];
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(screenWidth / 40),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            item['icon'],
                            size: screenWidth / 10,
                            color: Color(0xFF427ECC),
                          ),
                          SizedBox(height: screenHeight / 60),
                          Text(
                            item['text'],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth / 30,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: screenHeight/25,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth / 20, top: screenHeight / 30),
                    child: Text(
                      "Office Contacts ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth / 25,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
