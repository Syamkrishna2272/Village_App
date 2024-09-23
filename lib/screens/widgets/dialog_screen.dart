import 'package:flutter/material.dart';

void showMobileNumberDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).width /
              47), // Set your desired border radius here
        ),
        title: Text(
          "Continue with",
          style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).width / 28,
              color: const Color(0xFF00120B)),
        ),
        content: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height / 4.5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFFECECEC),
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
                title: const Text("8606200441"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFFECECEC),
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
                title: const Text("9876543210"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(),
              ListTile( 
                title: Text(
                  "NONE OF THE ABOVE ",
                  style: TextStyle(
                      color: const Color(0xFF427ECC),
                      fontSize: MediaQuery.sizeOf(context).width / 35,
                      fontWeight: FontWeight.w600),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
