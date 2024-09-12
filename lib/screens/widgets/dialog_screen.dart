import 'package:flutter/material.dart';

void showMobileNumberDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Continue with",
            style: TextStyle(
                fontSize: MediaQuery.sizeOf(context).width / 28,
                color: const Color(0xFF00120B)),
          ),
          content: Column(
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
        );
      },
    );
  }