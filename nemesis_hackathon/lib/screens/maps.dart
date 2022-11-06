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
          title: Text('Maps'),
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
