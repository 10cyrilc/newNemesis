import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nemesis_hackathon/screens/dummy.dart';
import 'package:nemesis_hackathon/widgets/bottomNavbar.dart';
import 'package:nemesis_hackathon/widgets/hamburger.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: const HamburgerDrawer(),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/homepage.jpg',
          ),
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Organization Name',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    //for weather pic
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.amber,
                    ),
                  ],
                ),
                const Text(
                  "Location",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Food Facts',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Keep your freezer organized so food doesn't get lost and then thrown out due to freezer burn",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
