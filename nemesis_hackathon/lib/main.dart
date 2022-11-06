import 'package:flutter/material.dart';
import 'package:nemesis_hackathon/screens/home_page.dart';
import 'package:nemesis_hackathon/screens/login_screen.dart';
import 'package:nemesis_hackathon/widgets/bottomNavbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
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
      home: LoginScreen(),
      routes: {
        '/home_page_organisation': ((context) => BottomNavBar()),
        '/logout': ((context) => LoginScreen()),
        '/home': ((context) => HomePage())
      },
    );
  }
}
