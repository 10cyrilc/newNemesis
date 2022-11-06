import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nemesis_hackathon/widgets/badges.dart';
import 'package:nemesis_hackathon/widgets/star.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 1, blurRadius: 20),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage(
                    'assets/profile.jpg',
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Name',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'Event Organizer',
                style: TextStyle(fontSize: 20, color: Colors.grey[400]),
              ),
            ],
          )),
          Container(
            height: height * 0.6,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(30)),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Badges',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.bakery_dining_rounded,
                        color: Colors.amber,
                        size: 40,
                      ),
                      const Icon(
                        Icons.bakery_dining_rounded,
                        color: Colors.amber,
                        size: 40,
                      ),
                      const Icon(
                        Icons.bakery_dining_rounded,
                        color: Colors.amber,
                        size: 40,
                      ),
                      const Icon(
                        Icons.bakery_dining_rounded,
                        color: Colors.amber,
                        size: 40,
                      ),
                      const Icon(
                        Icons.bakery_dining_rounded,
                        color: Colors.amber,
                        size: 40,
                      ),
                    ],
                  ),
                  Text('Description'),
                  Text(
                    'He3y Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Rating',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.amber,
                        size: 30,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.amber,
                        size: 30,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.amber,
                        size: 30,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.amber,
                        size: 30,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.amber,
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
