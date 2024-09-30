import 'package:flutter/material.dart';
import 'package:village_app/view/screens/touristplacepage/widget/images_widget.dart';

class SpecificTouristSpot extends StatelessWidget {
  const SpecificTouristSpot({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calicut Beach",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: screenWidth / 15),
              child: const Text(
                "Share",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF427ECC),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImagesWidget(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              SizedBox(height: screenHeight / 55),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 25),
                    child: Text(
                      'കുതിരവട്ടം പപ്പു മുതൽ എംടി വരെ; പുതുമുഖം തീർത്ത് കോഴിക്കോട് ബീച്ച്',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth / 23),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: screenWidth / 45,
                        horizontal: screenWidth / 28),
                    child: Row(
                      children: [
                        Text(
                          "Added by Mujeeb Kaipakil",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth / 32),
                        ),
                        Icon(
                          Icons.check_circle_outline,
                          size: screenWidth / 25,
                        ),
                        SizedBox(width: screenWidth / 18),
                        Text("12-04-2023",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: screenWidth / 33))
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth / 25, right: screenWidth / 25),
                child: Container(
                  height: screenHeight / 13,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth / 45),
                      color: const Color(0XFFF7F4F6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: screenWidth / 25,
                      ),
                      const Text(
                        "Opening Time",
                        style:
                            TextStyle(color: Color.fromARGB(255, 91, 89, 89)),
                      ),
                      Text(
                        "10 AM to 6 PM except sunday",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth / 30),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 85),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth / 25, right: screenWidth / 25),
                child: Container(
                  height: screenHeight / 13,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(screenWidth / 45),
                      color: const Color(0XFFF7F4F6)),
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth / 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.newspaper,
                          size: screenWidth / 25,
                        ),
                        SizedBox(width: screenWidth / 25),
                        const Text(
                          "Ticket",
                          style:
                              TextStyle(color: Color.fromARGB(255, 91, 89, 89)),
                        ),
                        SizedBox(width: screenWidth / 2),
                        Text(
                          "Free Entry",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth / 30),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 50),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth / 25, right: screenWidth / 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: screenHeight / 17,
                        decoration: BoxDecoration(
                          color: const Color(0XFFD9E5F5),
                          borderRadius: BorderRadius.circular(screenWidth / 40),
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('lib/asset/img/Group 646.png'),
                            // Icon(
                            //   Icons.map_outlined,
                            //   color: Color(0XFF427ECC),
                            // ),
                            const Text(
                              "View on Map",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth / 30),
                    Expanded(
                      child: Container(
                        height: screenHeight / 17,
                        decoration: BoxDecoration(
                          color: const Color(0XFFFFE3E3),
                          borderRadius: BorderRadius.circular(screenWidth / 40),
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('lib/asset/img/Review.png'),
                            // Icon(
                            //   Icons.message_outlined,
                            //   color: Color(0XFFFB2828),
                            // ),
                            const Text(
                              "Reviews",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth / 25),
                child:
                    const Text("""തിരുവനന്തപുരം ∙ മുഖ്യമന്ത്രി പിണറായി വിജയന്‍റെ
മകൾ ടി.വീണയുടെ കമ്പനിയായ എക്സാലോജിക 
കിനെതിരായ സാമ്പത്നെതിരെ നടക്കുന്ന റജിസ്ട്രാർ 
 ഓഫ് കമ്പനീസിന്റെ (ആർഒസി) അന്വേഷണം സീര
 ിയസ് ഫ്രോഡ് ഇൻവെസ്റ്റിഗേഷൻ. 
 തിരുവനന്തപുരം ∙ മുഖ്യമന്ത്രി പിണറായി വിജയന്‍റെ മകൾ ടി.വീണയുടെ     
കമ്പനിയായ എക്സാലോജിക ്കിനെതിരായ
സാമ്പത്നെതിരെ നടക്കുന്ന റജിസ്ട്രാർ ഓഫ്
കമ്പനീസിന്റെ (ആർഒസി) അന്വേഷണം സീര ിയസ് 
ഫ്രോഡ് ഇൻവെസ്റ്റിഗേഷൻ."""),
              )
            ],
          ),
        ),
      ),
    );
  }
}
