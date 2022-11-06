import 'package:flutter/material.dart';
import 'package:nemesis_hackathon/screens/home_page.dart';
import 'package:nemesis_hackathon/screens/login_screen.dart';
import 'package:nemesis_hackathon/screens/maps.dart';
import 'package:nemesis_hackathon/widgets/bottomNavbar.dart';

import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<bool> askForPermissions() async {
    final PermissionStatus permission = await Permission.phone.status;
    await [Permission.phone].request();
    await [Permission.location].request();
    // await [Permission.locationAlways].request();
    // await [Permission.locationWhenInUse].request();

    return permission.isDenied;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    askForPermissions();
  }

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
        '/logout': ((context) => const LoginScreen()),
        '/home': ((context) => const HomePage())
      },
    );
  }
}
