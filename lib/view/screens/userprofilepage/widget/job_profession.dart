import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:village_app/view/screens/homepage/widget/text_widget.dart';

class JobOrProfessionScreen extends StatefulWidget {
  const JobOrProfessionScreen({super.key});

  @override
  State<JobOrProfessionScreen> createState() => _JobOrProfessionScreenState();
}

class _JobOrProfessionScreenState extends State<JobOrProfessionScreen> {
  int _selectedIndex = -1; // To keep track of the selected radio button

  final List<Map<String, dynamic>> professions = [
    {"image": "lib/asset/img/Group (3).png", "title": "Network administrator"},
    {
      "image": "lib/asset/img/Group (4).png",
      "title": "User experience designer"
    },
    {"image": "lib/asset/img/Group (5).png", "title": "Systems analyst"},
    {"image": "lib/asset/img/Group (6).png", "title": "Database administrator"},
    {
      "image": "lib/asset/img/Group (7).png",
      "title": "Software application packager"
    },
    {"image": "lib/asset/img/Group (8).png", "title": "Full-stack developer"},
    {
      "image": "lib/asset/img/Group (9).png",
      "title": "Senior software engineer"
    },
    {"image": "lib/asset/img/Group (10).png", "title": "Data scientist"},
    {
      "image": "lib/asset/img/Group (11).png",
      "title": "Software application packager"
    },
  ];

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
            SizedBox(width: screenWidth / 5),
            Center(
              child: Text(
                "Job or Profession",
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: screenWidth / 20),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Which involves hiring and related activities, ",
                    textAlign: TextAlign.center,
                  ),
                ),
                const Center(
                  child: Text(
                    "so choose carefully.",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenHeight / 25),
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                  ],
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0XFFD2D2D2)),
                      borderRadius: BorderRadius.circular(screenWidth / 40),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0XFF427ECC)),
                      borderRadius: BorderRadius.circular(screenWidth / 40),
                    ),
                    hintText: "Search a profession",
                    hintStyle: TextStyle(
                      fontSize: screenWidth / 30,
                      color: const Color.fromARGB(255, 135, 146, 142),
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      size: screenWidth / 12,
                    ),
                    suffixIconColor: const Color(0XFF427ECC),
                  ),
                ),
                HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Select One",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 25,
                  paddingLeft: screenWidth / 45,
                  paddingTop: screenHeight / 30,
                ),
                SizedBox(height: screenHeight / 40),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: professions.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenWidth / 85,
                          horizontal: screenWidth / 70),
                      child: Container(
                        height: screenHeight / 12,
                        width: screenWidth,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenWidth / 45),
                            color: const Color(0XFFF1F1FA)),
                        child: ListTile(
                          leading: Image.asset(
                            professions[index]['image'],
                            width: screenWidth / 8,
                            height: screenHeight / 8,
                          ),
                          title: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            professions[index]['title'],
                            style: TextStyle(
                              fontSize: screenWidth / 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: Transform.scale(
                            scale: 1.2,
                            child: Radio<int>(
                              value: index,
                              groupValue: _selectedIndex,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedIndex = value!;
                                });
                              },
                              activeColor: const Color(0XFF427ECC),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: screenHeight / 15),
                SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: screenHeight / 17,
                            width: screenWidth / 2.4,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0XFF427ECC)),
                                borderRadius:
                                    BorderRadius.circular(screenWidth / 45)),
                            child: const Center(
                                child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFF427ECC)),
                            )),
                          ),
                        ),
                        // Update Button
                        Container(
                          height: screenHeight / 17,
                          width: screenWidth / 2.4,
                          decoration: BoxDecoration(
                              color: const Color(0XFF427ECC),
                              border:
                                  Border.all(color: const Color(0XFF427ECC)),
                              borderRadius:
                                  BorderRadius.circular(screenWidth / 45)),
                          child: const Center(
                              child: Text(
                            "Update",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )),
                        )
                      ],
                    )),
                SizedBox(height: screenHeight / 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
