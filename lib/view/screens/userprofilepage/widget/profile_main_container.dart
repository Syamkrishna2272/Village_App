import 'package:flutter/material.dart';

class UserProfileMainContainer extends StatelessWidget {
  const UserProfileMainContainer({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenWidth / 25),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0XFFF7F4F6),
              borderRadius: BorderRadius.circular(screenWidth / 45),
            ),
            height: screenHeight / 5,
            width: screenWidth,
            child: Stack(
              children: [
                Positioned(
                  right: screenWidth / 25,
                  top: screenHeight / 50,
                  child: Icon(
                    Icons.more_vert,
                    size: screenWidth / 18,
                    color: Colors.black,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight / 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Leslie Alexander ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth / 25),
                        ),
                        Image.asset(
                          'lib/asset/img/Group (2).png',
                          width: screenWidth / 25,
                          height: screenWidth / 25,
                        ),
                      ],
                    ),
                    Text(
                      "+91 8852552775",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth / 30,
                          color: const Color.fromARGB(255, 135, 146, 142)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: -screenWidth / 24,
            left: screenWidth / 2.9,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: screenWidth / 8,
                  backgroundImage:
                      const AssetImage('lib/asset/img/Ellipse 39.png'),
                ),
                Positioned(
                  right: -screenWidth / 78,
                  bottom: -screenWidth / 155,
                  child: CircleAvatar(
                    radius: screenWidth / 23,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.mode_edit_outlined,
                      color: Colors.white,
                      size: screenWidth / 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}