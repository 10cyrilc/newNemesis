import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            child: Column(
              children: [Text('Badges')],
            ),
          )
        ],
      ),
    );
  }
}
