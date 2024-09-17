import 'package:flutter/material.dart';

class CarContactScreen extends StatelessWidget {
  const CarContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: screenHeight / 10,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: screenWidth / 15,
            ),
            SizedBox(width: screenWidth / 40),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
            Icon(
              Icons.notifications,
              color: Colors.black,
              size: screenWidth / 12,
            ),
            SizedBox(width: screenWidth / 15),
            const CircleAvatar(
              backgroundImage: AssetImage('lib/asset/img/Ellipse 52.png'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: screenHeight / 50),
                decoration: BoxDecoration(
                  color: Colors.amber.shade50,
                  borderRadius: BorderRadius.circular(screenWidth / 30),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: screenWidth / 10,
                      backgroundImage:
                          const AssetImage('lib/asset/img/Ellipse 39.png'),
                    ),
                    SizedBox(width: screenWidth / 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Leslie Alexander Lorem.. ",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth / 25,
                              color: Colors.black,
                            ),
                          ),
                          // SizedBox(height: screenHeight / 100),
                          Row(
                            children: [
                              Icon(
                                Icons.work_outline,
                                size: screenWidth / 25,
                                color: Colors.grey,
                              ),
                              SizedBox(width: screenWidth / 80),
                              Text(
                                "INTERIOR DESIGNER",
                                style: TextStyle(
                                  fontSize: screenWidth / 30,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight / 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 195, 217, 246),
                        borderRadius: BorderRadius.circular(screenWidth / 40)),
                    width: screenWidth / 2.4,
                    height: screenHeight / 15,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.message, color: Color(0XFF427ECC)),
                        Text(
                          "Message",
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: screenWidth/23),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 200, 246, 217),
                        borderRadius: BorderRadius.circular(screenWidth / 40)),
                    width: screenWidth / 2.4,
                    height: screenHeight / 15,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.phone, color: Color(0XFF23B158)),
                        Text("Call Now",
                          style: TextStyle(fontWeight: FontWeight.w500,fontSize: screenWidth/23))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
