import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:village_app/screens/taxiservicepage/taxiservice_screen.dart';

class QuickAccessWidget extends StatelessWidget {
  final List<Map<String, dynamic>> quickaccessData = [
      {'icon': MdiIcons.bagSuitcase, 'text': 'Jobs or Professions'},
      {'icon': MdiIcons.taxi, 'text': 'Taxi Services'},
      {'icon': MdiIcons.bus, 'text': 'Bus Services'},
      {'icon': Icons.home_outlined, 'text': 'Shops and Business'},
      {'icon': Icons.tour, 'text': 'Nearby Tourist Places'},
      {'icon': MdiIcons.earbudsOutline, 'text': 'Office Contacts'},
      {'icon': MdiIcons.ambulance, 'text': 'Emergency'},
      {'icon': Icons.video_call_outlined, 'text': 'Village Shorts'},
      {'icon': Icons.calendar_month_outlined, 'text': 'Event Calender'},
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3 ,
          crossAxisSpacing: screenWidth / 30,
          mainAxisSpacing: screenHeight / 50,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final item = quickaccessData[index];
          return GestureDetector(
            onTap: () => ontappItem(context,item['text']),
            child: Card(
              elevation: 2,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: screenWidth / 5,
                      height: screenHeight / 18,
                      child: Icon(
                        item['icon'],
                        size: screenWidth / 10,
                        color: const Color(0xFF427ECC),
                      ),
                    ),
                    SizedBox(height: screenHeight / 60),
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


  void ontappItem(BuildContext context,String text){
    switch(text){
      case 'Taxi Services':
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return TaxiServiceScreen();
      }));
      break;
    }
  }
}