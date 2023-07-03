import 'package:flutter/material.dart';

class OptionalDetails extends StatelessWidget {
  const OptionalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agriculture'),
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
