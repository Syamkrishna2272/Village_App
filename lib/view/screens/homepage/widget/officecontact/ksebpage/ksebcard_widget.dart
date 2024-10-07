import 'package:flutter/material.dart';

class KsebCardWidget extends StatelessWidget {
  const KsebCardWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth / 25, right: screenWidth / 25),
      child: Container(
        height: screenHeight / 5,
        width: screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth / 45),
          color: const Color.fromARGB(255, 233, 228, 228),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: screenHeight / 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth / 38),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: screenWidth / 13,
                    child: Image.asset('lib/asset/img/image 2.png'),
                  ),
                ),
                SizedBox(
                  width: screenWidth / 38,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "KSEB Thamarassery",
                      style: TextStyle(
                        fontSize: screenWidth / 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Karady post office, Thamarassery",
                      style: TextStyle(
                        fontSize: screenWidth / 30,
                        color: const Color.fromARGB(255, 119, 120, 119),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth / 5.3),
              child: Row(
                children: [
                  // First small container
                  Container(
                    height: screenHeight / 15,
                    width: screenWidth / 2.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth / 45),
                        color: const Color.fromARGB(255, 215, 228, 246)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          color: const Color(0XFF427ECC),
                          size: screenWidth / 15,
                        ),
                        SizedBox(width: screenWidth / 50),
                        Text(
                          "E-Mail",
                          style: TextStyle(
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenWidth / 55,
                  ),
                  Container(
                    height: screenHeight / 15,
                    width: screenWidth / 2.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth / 45),
                      color: const Color.fromARGB(255, 212, 246, 224),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          color: const Color(0XFF23B158),
                          size: screenWidth / 15,
                        ),
                        SizedBox(width: screenWidth / 50),
                        Text(
                          "Call Now",
                          style: TextStyle(
                            fontSize: screenWidth / 25,
                            fontWeight: FontWeight.w500,
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
      ),
    );
  }
}
