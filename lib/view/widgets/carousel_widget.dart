import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    super.key,
    required this.imagePaths,
    required this.screenWidth,
    required this.screenHeight,
  });

  final List<String> imagePaths;
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imagePaths.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: screenWidth,
              margin: const EdgeInsets.symmetric(horizontal: 1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenWidth / 45),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenWidth / 72),
                    child: SizedBox(
                      height: screenHeight / 6,
                      width: screenWidth / 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(screenWidth / 40),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth / 30),

                  // Text container
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight / 80),
                          child: Container(
                            height: screenHeight / 38,
                            width: screenWidth / 5,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.circular(screenWidth / 65)),
                            child: Center(
                                child: Text(
                              "HOT NEWS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth / 35,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        // SizedBox(
                        //     height: screenHeight / 80),
                        Text(
                          "'I recommend to stay calm!' | Jurgen Klopp  ",
                          style: TextStyle(
                            fontSize: screenWidth / 32,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: screenHeight / 3,
        aspectRatio: 16 / 9,
        viewportFraction: 0.95,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
