  import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';

  class EmergencyScreen extends StatelessWidget {
    const EmergencyScreen({super.key});

    @override
    Widget build(BuildContext context) {
      final mediaQuery = MediaQuery.of(context);
      final screenHeight = mediaQuery.size.height;
      final screenWidth = mediaQuery.size.width;
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Emergency",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth / 30),
              child: Container(
                height: screenHeight / 5,
                width: screenWidth,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0XFFFF1D15),
                    ),
                    borderRadius: BorderRadius.circular(screenWidth / 45)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(screenWidth / 22),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.warning_rounded,
                            color: Color(0XFFEE404C),
                          ),
                          Text(
                            "EMERGENCY ALERT",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth / 22),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.close,
                            color: const Color(0XFFEE404C),
                            size: screenWidth / 12,
                          )
                        ],
                      ),
                    ),
                    const Text(
                      """Sed ut perspiciatis unde omnis iste natus error sit 
  voluptatem accusantium doloremque laudantium, 
  to Sed ut perspiciatis unde omnis.""",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Padding(
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
                            fontSize: screenWidth / 30,
                            fontWeight: FontWeight.w700),
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
                      SizedBox(width: screenWidth / 15 ),
                      Text(
                        'Fire Force',
                        style: TextStyle(
                            fontSize: screenWidth / 30,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ],
        )),
      );
    }
  }
 