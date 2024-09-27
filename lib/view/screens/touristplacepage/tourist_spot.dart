import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            Container(
              height: screenHeight / 3, // Main container height
              width: screenWidth, // Full width
              color: Colors.transparent, // No color for background
              child: Row(
                children: [
                  // Left large image (half width)
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://via.placeholder.com/400x400'), // Replace with your image URL
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // Right side grid of smaller images
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        // Top row with two images
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://via.placeholder.com/200x200'), // Replace with your image URL
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://via.placeholder.com/200x200'), // Replace with your image URL
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Bottom row with image and "+5" overlay
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://via.placeholder.com/200x200'), // Replace with your image URL
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              'https://via.placeholder.com/200x200'), // Replace with your image URL
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    // Add overlay with +5 text
                                    Container(
                                      color: Colors.black.withOpacity(0.5),
                                      child: const Center(
                                        child: Text(
                                          "+5",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
