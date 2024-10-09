import 'package:flutter/material.dart';
import 'package:village_app/view/screens/homepage/widget/officecontact/ksebpage/ksebscreen.dart';

class OfficeWidget extends StatelessWidget {
  final List<Map<String, dynamic>> officeData = [
    {'image': 'lib/asset/img/image 1 (1).png', 'text': 'BANK'},
    {'image': 'lib/asset/img/image 2 (1).png', 'text': 'KSEB'},
    {'image': 'lib/asset/img/image 3 (1).png', 'text': 'Police'},
    {'image': 'lib/asset/img/image 4 (1).png', 'text': 'MVD'},
    {'image': 'lib/asset/img/image 3 (1).png', 'text': 'Police'},
  ];
  OfficeWidget({
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
      child: SizedBox(
        height: screenHeight / 6.9,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: officeData.length,
          itemBuilder: (context, index) {
            final item = officeData[index];
            return Padding(
              padding: EdgeInsets.only(right: screenWidth / 30),
              child: GestureDetector(
                onTap: () => ontappItem(context, item['text']),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container for the image
                    Container(
                      width: screenWidth / 5,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: const Color(0XFFD9D9D9),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(screenWidth / 45),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: screenWidth / 9,
                          height: screenHeight / 10,
                          child: Image.asset(item['image']),
                        ),
                      ),
                    ),
                    // Spacing between the container and text
                    SizedBox(height: screenHeight / 60),
                    // Text displayed outside and below the container
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
    );
  }

  void ontappItem(BuildContext context, String text) {
    switch (text) {
      case 'KSEB':
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const KsebScreen();
        }));
        break;
      //   case 'Nearby Tourist Places':
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //       return const TouristPlaceScreen();
      //     }));
      //     break;
      //     case 'Emergency':
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context){
      //       return EmergencyScreen();
      //     }));
      // }
    }
  }
}
