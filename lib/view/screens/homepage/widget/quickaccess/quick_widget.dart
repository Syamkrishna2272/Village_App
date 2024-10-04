import 'package:flutter/material.dart';
import 'package:village_app/view/screens/homepage/widget/quickaccess/emergencypage/emergency_screen.dart';
import 'package:village_app/view/screens/homepage/widget/quickaccess/taxiservicepage/taxiservice_screen.dart';
import 'package:village_app/view/screens/homepage/widget/quickaccess/touristplacepage/tourist_place_screen.dart';

class QuickAccessWidget extends StatelessWidget {
  final List<Map<String, dynamic>> quickaccessData = [
    {'image': 'lib/asset/img/Group 605.png', 'text': 'Jobs or Professions'},
    {'image': 'lib/asset/img/Group 608.png', 'text': 'Taxi Services'},
    {'image': 'lib/asset/img/Vector (1).png', 'text': 'Bus Services'},
    {'image': 'lib/asset/img/Group 614.png', 'text': 'Shops and Business'},
    {'image': 'lib/asset/img/Frame.png', 'text': 'Nearby Tourist Places'},
    {'image': 'lib/asset/img/Group 606.png', 'text': 'Office Contacts'},
    {'image': 'lib/asset/img/Group 612.png', 'text': 'Emergency'},
    {'image': 'lib/asset/img/Group 613.png', 'text': 'Village Shorts'},
    {'image': 'lib/asset/img/Group 610.png', 'text': 'Event Calender'},
  ];

  QuickAccessWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: quickaccessData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10, // Space between columns
          mainAxisSpacing: 10, // Space between rows
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final item = quickaccessData[index];
          return GestureDetector(
            onTap: () => ontappItem(context, item['text']),
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 234, 244, 252),
                    Color.fromARGB(255, 247, 249, 251)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(screenWidth / 45),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth / 5,
                      height: screenHeight / 18,
                      child: Image.asset(quickaccessData[index]['image']),
                    ),
                    Text(
                      item['text'],
                      textAlign: TextAlign.center,  
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth / 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void ontappItem(BuildContext context, String text) {
    switch (text) {
      case 'Taxi Services':
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return TaxiServiceScreen();
        }));
        break;
      case 'Nearby Tourist Places':
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const TouristPlaceScreen();
        }));
        break;
        case 'Emergency':
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return EmergencyScreen();
        })); 
    }
  }
}
