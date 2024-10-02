import 'package:flutter/material.dart';

class EmergencyCardWidget extends StatelessWidget {
  const EmergencyCardWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCard(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          imagePath: 'lib/asset/img/Group (13).png',
          title: 'Blood Urgency',
        ),
        buildCard(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          imagePath: 'lib/asset/img/Group (14).png',
          title: 'Death News',
        ),
        buildCard(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          imagePath: 'lib/asset/img/23-direction.png',
          title: 'Traffic update',
        ),
        buildCard(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          imagePath: 'lib/asset/img/Group 655.png',
          title: 'Other Emergencies',
        ),
      ],
    );
  }

  Padding buildCard({
    required double screenWidth,
    required double screenHeight,
    required String imagePath,
    required String title,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth / 19, right: screenWidth / 19),
      child: Card(
        child: Container(
          height: screenHeight / 9.5,
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenWidth / 45),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(screenWidth / 45),
                child: Container(
                  height: screenHeight,
                  width: screenWidth / 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth / 45),
                    color: const Color(0XFFFF1D15),
                  ),
                  child: Image.asset(imagePath),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth / 25,
                ),
              ),
              const Spacer(), 
              Icon(
                Icons.arrow_right_alt_outlined,
                size: screenWidth / 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
