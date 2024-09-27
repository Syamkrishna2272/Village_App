import 'package:flutter/material.dart';
import 'package:village_app/view/screens/detailspage/userdetails.dart';
import 'package:village_app/view/screens/userprofilepage/email_page.dart';
import 'package:village_app/view/screens/userprofilepage/widget/job_profession.dart';
import 'package:village_app/view/screens/verificationpage/mobile_verification.dart';

class UserDataWidget extends StatelessWidget {
  const UserDataWidget({
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
        height: screenHeight / 2.4,
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
                    "Full Name",
                    style: TextStyle(
                        fontSize: screenWidth / 25,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const UserDetailsScreen(
                          fromUserDataWidget: true,
                        );
                      }));
                    },
                    child: Text(
                      "Afthabu Rahman",
                      style: TextStyle(fontSize: screenWidth / 30),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: BorderSide.strokeAlignCenter,
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Phone Number",
                    style: TextStyle(
                        fontSize: screenWidth / 25,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const MobileNumberScreen(userDataWidget: true,);
                      }));
                    },
                    child: Text(
                      "+91 8606200441",
                      style: TextStyle(fontSize: screenWidth / 30),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: BorderSide.strokeAlignCenter,
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Email Address",
                    style: TextStyle(
                        fontSize: screenWidth / 25, 
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const EmailScreen();
                      }));
                    },
                    child: Text(
                      "afthaburahman313@gma.. ",
                      style: TextStyle(fontSize: screenWidth / 30),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: BorderSide.strokeAlignCenter,
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                        fontSize: screenWidth / 25,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "@afthabu441",
                    style: TextStyle(fontSize: screenWidth / 30),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: BorderSide.strokeAlignCenter,
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Job or Profession",
                    style: TextStyle(
                        fontSize: screenWidth / 25,
                        fontWeight: FontWeight.w600),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return  const JobOrProfessionScreen();
                      }));
                    },
                    child: Text(
                      "UI Designer",
                      style: TextStyle(fontSize: screenWidth / 30),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
