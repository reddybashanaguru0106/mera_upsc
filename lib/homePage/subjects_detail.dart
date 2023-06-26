import 'package:flutter/material.dart';

class SubjectsDetail extends StatelessWidget {
  const SubjectsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Current events of national and international importance'),
      ),
      body: Container(
        height: 200,
        width: 200,
        padding: const EdgeInsets.all(10),
        child: const Text('I am the body text'),
      ),
    );
  }
}
