import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: screenWidth / 2.3,
              height: screenHeight / 15,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(screenWidth / 40)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 50),
                    child: Icon(
                      MdiIcons.rickshaw,
                      size: screenWidth / 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: screenWidth / 50),
                  Text(
                    'Auto rickshaw',
                    style: TextStyle(
                        fontSize: screenWidth / 30,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth / 2.3,
              height: screenHeight / 15,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(screenWidth / 40)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 50),
                    child: Icon(
                      MdiIcons.bloodBag,
                      size: screenWidth / 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: screenWidth / 50),
                  Text(
                    'Donate Blood',
                    style: TextStyle(
                        fontSize: screenWidth / 30,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight / 38,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: screenWidth / 2.3,
              height: screenHeight / 15,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(screenWidth / 40)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 50),
                    child: Icon(
                      MdiIcons.newspaper,
                      size: screenWidth / 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: screenWidth / 50),
                  Text(
                    'News Portal',
                    style: TextStyle(
                        fontSize: screenWidth / 30,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth / 2.3,
              height: screenHeight / 15,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(screenWidth / 40)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 50),
                    child: Icon(
                      Icons.person,
                      size: screenWidth / 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: screenWidth / 50),
                  Text(
                    'Village Icons',
                    style: TextStyle(
                        fontSize: screenWidth / 30,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}