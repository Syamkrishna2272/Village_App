import 'package:flutter/material.dart';
import 'package:village_app/view/screens/userprofilepage/userdatas/user_data.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({
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
      child: Container(
        height: screenHeight / 3.6, //updated
        width: screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth / 45),
          color: const Color(0XFFF7F4F6),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth / 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile Details",
                    style: TextStyle(
                        fontSize: screenWidth / 25,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const UserDataScreen();
                        }));
                      },
                      child: const Icon(Icons.arrow_forward_outlined))
                ],
              ),
            ),
            const Divider(thickness: BorderSide.strokeAlignCenter,),
            Padding(
              padding: EdgeInsets.all(screenWidth / 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Languages",
                    style: TextStyle(
                        fontSize: screenWidth / 25,
                        fontWeight: FontWeight.w600),
                  ),
                  const Icon(Icons.arrow_forward_outlined)
                ],
              ),
            ),
            const Divider(thickness: BorderSide.strokeAlignCenter,),
            Padding(
              padding: EdgeInsets.all(screenWidth / 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subscriptions",
                    style: TextStyle(
                        fontSize: screenWidth / 25,
                        fontWeight: FontWeight.w600),
                  ),
                  const Icon(Icons.arrow_forward_outlined)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
