import 'package:flutter/material.dart';
import 'package:nemesis_hackathon/screens/home_page.dart';
import 'package:nemesis_hackathon/screens/login_screen.dart';
import 'package:nemesis_hackathon/screens/maps.dart';
import 'package:nemesis_hackathon/widgets/bottomNavbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme:
              const ColorScheme.light(primary: Color.fromARGB(255, 34, 34, 34))
          // primarySwatch: Colors.blue,
          ),
      home: const LoginScreen(),
      routes: {
        '/home_page_organisation': ((context) => BottomNavBar()),
        '/maps': ((context) => Maps()),
      },
    );
  }
}
