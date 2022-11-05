import 'package:flutter/material.dart';
import 'package:nemesis_hackathon/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme:
              const ColorScheme.light(primary: Color.fromARGB(255, 34, 34, 34))
          // primarySwatch: Colors.blue,
          ),
      home: const LoginScreen(),
    );
  }
}
