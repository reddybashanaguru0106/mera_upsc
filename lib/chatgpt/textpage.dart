import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mera_upsc/chatgpt/api_service.dart';

void main() {
  runApp(const MaterialApp(
    home: Textpage(),
  ));
}

class Textpage extends StatefulWidget {
  static var completionFun;

  const Textpage({Key? key}) : super(key: key);

  @override
  State<Textpage> createState() => _TextpageState();
}

class _TextpageState extends State<Textpage> {
  late final TextEditingController promptController;
  String responseTxt = '';

  @override
  void initState() {
    promptController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    promptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          'ChatGpt',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Expanded(
            child: PromptBldr(responseTxt: responseTxt),
          ),
          TextFormFieldBdlr(
            promptController: promptController,
            btnFun: completionFun,
          ),
        ],
      ),
    );
  }

  Future<void> completionFun() async {
    setState(() => responseTxt = 'Loading...');
    final response = await http.post(
      Uri.parse('$Base_URL/models'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $API_KEY}',
      },
      body: jsonEncode(
        {
          "prompt": promptController.text,
          "max_tokens": 250,
          "temperature": 0,
          "top_p": 1,
        },
      ),
    );
    setState(() {
      final responseData = jsonDecode(response.body);
      responseTxt = responseData['choices'][0]['text'];
      debugPrint(responseTxt);
    });
  }
}

class PromptBldr extends StatelessWidget {
  const PromptBldr({Key? key, required this.responseTxt}) : super(key: key);

  final String responseTxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            responseTxt,
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class TextFormFieldBdlr extends StatelessWidget {
  const TextFormFieldBdlr({
    Key? key,
    required this.promptController,
    required this.btnFun,
  }) : super(key: key);

  final TextEditingController promptController;
  final Function btnFun;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              child: TextFormField(
                cursorColor: Colors.white,
                controller: promptController,
                autofocus: true,
                style: const TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.grey,
                  hintText: 'Ask me anything',
                  hintStyle: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.lightGreenAccent,
              child: IconButton(
                onPressed: () async {
                  try {
                    await Textpage.completionFun();
                  } catch (error) {
                    print("error $error");
                  }
                },
                icon: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
