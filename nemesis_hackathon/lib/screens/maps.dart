import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Maps extends StatelessWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Maps',
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/home');
                // Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              )),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
        ),
      ),
    );
  }
}
