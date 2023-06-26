import 'package:flutter/material.dart';

class MyTestPage extends StatelessWidget {
  const MyTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'This is test page',
      textDirection: TextDirection.rtl,
    );
  }
}
