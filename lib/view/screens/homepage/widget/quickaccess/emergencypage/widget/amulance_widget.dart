import 'package:flutter/material.dart';

class AmbulanceFireForceWidget extends StatelessWidget {
  const AmbulanceFireForceWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth / 18),
      child: Row(
        children: [
          Container(
            width: screenWidth / 2.3,
            height: screenHeight / 13,
            decoration: BoxDecoration(
                color: const Color(0XFFF4F4F4),
                borderRadius: BorderRadius.circular(screenWidth / 45)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth / 20),
                  child: Image.asset('lib/asset/img/Group (12).png'),
                ),
                SizedBox(width: screenWidth / 50),
                Text(
                  'Ambulance',
                  style: TextStyle(
                      fontSize: screenWidth / 30, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            width: screenWidth / 50,
          ),
          Container(
            width: screenWidth / 2.3,
            height: screenHeight / 13,
            decoration: BoxDecoration(
                color: const Color(0XFFF4F4F4),
                borderRadius: BorderRadius.circular(screenWidth / 45)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth / 15),
                  child: Image.asset('lib/asset/img/XMLID_1_.png'),
                ),
                SizedBox(width: screenWidth / 15),
                Text(
                  'Fire Force',
                  style: TextStyle(
                      fontSize: screenWidth / 30, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}