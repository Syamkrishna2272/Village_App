import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:village_app/view/screens/intropage/intropage.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensures that widget binding is initialized
  await Hive.initFlutter(); // Initialize Hive
  // Optionally use the following line if you want to specify a custom path
  // var directory = await getApplicationDocumentsDirectory();
  // Hive.init(directory.path);

  // Open a box for user details (optional: add more boxes as needed)
  await Hive.openBox('userDetails');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
