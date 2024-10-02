import 'package:flutter/material.dart';
import 'package:village_app/view/screens/homepage/widget/quickaccess/emergencypage/widget/amulance_widget.dart';
import 'package:village_app/view/screens/homepage/widget/quickaccess/emergencypage/widget/emergency_card_widget.dart';
import 'package:village_app/view/widgets/button_widget.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({super.key});

  @override
  State<EmergencyScreen> createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  bool _isAlertVisible = true;
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
          child: SingleChildScrollView(
        child: Column(
          children: [
            if (_isAlertVisible)
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth / 20, right: screenWidth / 20),
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
                        padding: EdgeInsets.all(screenWidth / 35),
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
                            IconButton(
                                icon: Icon(
                                  Icons.close,
                                  color: const Color(0XFFEE404C),
                                  size: screenWidth / 12,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isAlertVisible = false;
                                  });
                                })
                            //
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
            SizedBox(height: screenHeight / 25),
            AmbulanceFireForceWidget(
                screenWidth: screenWidth, screenHeight: screenHeight),
            SizedBox(
              height: screenHeight / 35,
            ),
            Text(
              """Select a category from the emergency list 
to access important notifications.""",
              style: TextStyle(
                  fontSize: screenWidth / 23, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: screenHeight / 35),
            EmergencyCardWidget(
                screenWidth: screenWidth, screenHeight: screenHeight),
            SizedBox(
              height: screenHeight / 15,
            ),
            Text(
              "Any emergency news ?",
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: screenWidth / 20),
            ),
            SizedBox(
              width: screenWidth / 3,
              height: screenHeight / 16,
              child: ButtonWidget(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  buttonColor: const Color(0XFF427ECC),
                  text: 'Notify All',
                  fontSize: screenWidth / 28,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.white,
                  onPressed: () {}),
            ),
            SizedBox(
              height: screenHeight / 8,
            )
          ],
        ),
      )),
    );
  }
  
}
