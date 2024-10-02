import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:village_app/view/widgets/text_widget.dart';

class EmergencyCardWidget extends StatelessWidget {
  const EmergencyCardWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showBloodBottomSheet(context, screenWidth);
          },
          child: buildCard(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            imagePath: 'lib/asset/img/Group (13).png',
            title: 'Blood Urgency',
          ),
        ),
        buildCard(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          imagePath: 'lib/asset/img/Group (14).png',
          title: 'Death News',
        ),
        buildCard(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          imagePath: 'lib/asset/img/23-direction.png',
          title: 'Traffic update',
        ),
        buildCard(
          screenWidth: screenWidth,
          screenHeight: screenHeight,
          imagePath: 'lib/asset/img/Group 655.png',
          title: 'Other Emergencies',
        ),
      ],
    );
  }

  Padding buildCard({
    required double screenWidth,
    required double screenHeight,
    required String imagePath,
    required String title,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth / 19, right: screenWidth / 19),
      child: Card(
        child: Container(
          height: screenHeight / 9.5,
          width: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenWidth / 45),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(screenWidth / 45),
                child: Container(
                  height: screenHeight,
                  width: screenWidth / 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth / 45),
                    color: const Color(0XFFFF1D15),
                  ),
                  child: Image.asset(imagePath),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth / 25,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_right_alt_outlined,
                size: screenWidth / 12,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showBloodBottomSheet(BuildContext context, double screenWidth) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(screenWidth / 20),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(screenWidth / 20),
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Center the title
                  Expanded(
                    child: Center(
                      child: Text(
                        "Emergency News",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth / 18,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
              HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Category",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 25,
                  paddingLeft: screenWidth / 65,
                  paddingTop: screenHeight / 35),
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
                  hintText: "Last Name (mandatory)",
                  hintStyle: TextStyle(
                    fontSize: screenWidth / 30,
                    color: const Color.fromARGB(255, 135, 146, 142),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight / 75,
              ),
              HomeTextWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  text: "Description",
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth / 25,
                  paddingLeft: screenWidth / 65,
                  paddingTop: screenHeight / 35),
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
                  hintText: "description (mandatory)",
                  hintStyle: TextStyle(
                    fontSize: screenWidth / 30,
                    color: const Color.fromARGB(255, 135, 146, 142),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight / 15, 
              ), 
              Container(
                height: screenHeight / 15,
                width: screenWidth / 2.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth / 45),
                    color: Colors.amber),
              )
            ],
          ),
        );
      },
    );
  }
}
