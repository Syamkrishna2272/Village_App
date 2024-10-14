import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:village_app/view/screens/basicdetailspage/model/userdetails_model.dart';
import 'package:village_app/view/screens/intropage/intropage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<UserDetails>('userDetails');
  Hive.registerAdapter(UserDetailsAdapter());

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
