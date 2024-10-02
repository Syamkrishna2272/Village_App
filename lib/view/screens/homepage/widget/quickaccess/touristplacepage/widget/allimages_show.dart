import 'package:flutter/material.dart';

class AllImagesScreen extends StatefulWidget {
  const AllImagesScreen({super.key});

  @override
  State<AllImagesScreen> createState() => _AllImagesScreenState();
}

class _AllImagesScreenState extends State<AllImagesScreen> {
  final List<String> images = [
    'lib/asset/img/Rectangle 169.png',
    'lib/asset/img/Rectangle 128.png',
    'lib/asset/img/Rectangle 193 (1).png',
    'lib/asset/img/Rectangle 213.png',
  ];

  String selectedImage = 'lib/asset/img/Rectangle 128.png';
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Calicut Beach",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Main large image
            Container(
              height: screenHeight / 2,
              width: screenWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(selectedImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Thumbnails ListView
            Padding(
              padding: EdgeInsets.only(top: screenWidth / 3),
              child: Center(
                child: SizedBox(
                  width: screenWidth / 1.5,
                  height: screenHeight / 12,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: screenWidth / 55),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedImage = images[index];
                              _selectedIndex = index; // Update selected index
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                width: 2,
                              ),
                              borderRadius:
                                  BorderRadius.circular(screenWidth / 45),
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(screenWidth / 45),
                              child: Image.asset(
                                images[index],
                                width: screenWidth / 5.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
