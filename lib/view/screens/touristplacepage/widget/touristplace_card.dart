import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TouristCardWidget extends StatelessWidget {
  const TouristCardWidget(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      this.imagePath,
      this.titleText,
      this.locationText,
      this.icontext});

  final double screenWidth;
  final double screenHeight;
  final String? imagePath;
  final String? titleText;
  final String? locationText;
  final String? icontext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth / 28,
        vertical: screenWidth / 85,
      ),
      child: Card(
        child: Container(
          height: screenHeight / 3.1,
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenWidth / 45),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(screenWidth / 45),
                      topRight: Radius.circular(screenWidth / 45),
                    ),
                    child: SizedBox(
                      height: screenHeight / 6,
                      width: screenWidth,
                      child: Image.asset(
                        imagePath!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      width: screenWidth / 3.3,
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth / 45,
                        vertical: screenWidth / 65,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0XFFD2D2D2).withOpacity(0.8),
                        borderRadius: BorderRadius.circular(screenWidth / 45),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            MdiIcons.clock,
                            size: screenWidth / 20,
                          ),
                          // SizedBox(width: screenWidth / 60),
                          Text(
                            icontext!,
                            style: TextStyle(
                              color: const Color(0XFF00120B),
                              fontSize: screenWidth / 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth / 25),
                child: Text(
                  titleText!,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth / 45),
                child: Row(
                  children: [
                    const Icon(Icons.location_on, color: Color(0XFF427ECC)),
                    Text(
                      locationText!,
                      style: TextStyle(
                        fontSize: screenWidth / 33,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
