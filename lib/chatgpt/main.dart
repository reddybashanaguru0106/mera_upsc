import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mera_upsc/app.dart';
import 'textpage.dart';

Future<void> main() async {
  // ignore: prefer_typing_uninitialized_variables
  var dotenv;
  await dotenv.load();
  runApp(const MyApp());
}

class ChatgptWidget extends StatelessWidget {
  const ChatgptWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'chatgpt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Textpage(),
    );
  }
}
