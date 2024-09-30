import 'package:flutter/material.dart';

class NewsDescriptionScreen extends StatelessWidget {
  const NewsDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Back",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: screenWidth / 15),
              child: Text(
                "Share News",
                style: TextStyle(
                  fontSize: screenWidth / 28,
                  fontWeight: FontWeight.w500,
                  color: const Color(0XFF427ECC),
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
            height: screenHeight / 5,
            width: screenWidth,
            child: Image.asset(
              'lib/asset/img/Rectangle 169 (1).png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              """മുഖ്യമന്ത്രിയുടെ മകൾ വീണയ്‌ക്ക് കുരുക്ക്; അന്വേഷണം എസ്എഫ്ഐഒയ്ക്ക് ....""",
              style: TextStyle(
                  fontSize: screenWidth / 25, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth / 31),
            child: Row(
              children: [
                Text(
                  "Katharammal News",
                  style: TextStyle(
                      fontSize: screenWidth / 32, fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.check_circle_outlined,
                  size: screenWidth / 28,
                ),
                SizedBox(width: screenWidth / 25),
                Text(
                  "13 Min ago",
                  style: TextStyle(fontSize: screenWidth / 32),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth / 31, right: screenWidth / 31),
            child: const Text(
              """തിരുവനന്തപുരം ∙ മുഖ്യമന്ത്രി പിണറായി വിജയന്‍റെ മകൾ ടി.വീണയുടെ കമ്പനിയായ
എക്സാലോജിക്കിനെതിരായ സാമ്പത്നെതിരെ 
നടക്കുന്ന റജിസ്ട്രാർ ഓഫ് കമ്പനീസിന്റെ 
(ആർഒസി) അന്വേഷണം സീരിയസ് ഫ്രോഡ് 
ഇൻവെസ്റ്റിഗേഷൻ ഓഫിസിന് ീണയുടെ
കമ്പനിയായ എക്സാലോജിക്കിനെതിരായ
സാമ്പത്നെതിരെ നടക്കുന്ന റജിസ്ട്രാർ ഓഫ് 
കമ്പനീസിന്റെ (ആർഒസി) അന്വേഷണം 
സീരിയസ് ഫ്രോഡ് ഇൻവെസ്റ്റിഗേഷൻ ഓഫിസിന് 
ന്വേഷണം സീരിയസ് 
ഫ്രോഡ് ഇൻവെസ്റ്റി ഗേഷൻ ഓഫിസിന് ീണയുടെ കമ്പനിയായ
എക്സാലോജിക്കിനെതിരായ സാമ്പത്നെതിരെ 
നടക്കുന്ന റജിസ്ട്രാർ ഓഫ് കമ്പനീസിന്റെ 
(ആർ ഒസി) അന്വേഷണം സീരിയസ് ഫ്രോഡ് ഇൻവെ
സ്റ്റിഗേഷൻ ഓഫിസിന് """,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      )),
    );
  }
}
