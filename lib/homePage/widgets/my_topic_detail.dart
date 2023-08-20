import 'package:flutter/material.dart';

const Color darkBlue = Color(0xFF12202F);
const Color saffron = Color.fromRGBO(255, 103, 31, 1);
const Color navyBlue = Color.fromRGBO(0, 0, 128, 1);

class MyTopicDetail extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final topic;
  const MyTopicDetail({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all<Color>(darkBlue),
          thickness: MaterialStateProperty.all<double>(2.0),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: darkBlue,
          title: Center(
            child: Text(
              "${topic['id']}. ${topic['title'].toUpperCase()}",
            ),
          ),
          toolbarHeight: 60,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: const <Widget>[],
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Scrollbar(
            child: ListView(
              children: [
                const Card(
                  color: saffron,
                  child: SizedBox(
                    height: 40,
                    child: Center(
                      child: Text(
                        " INTRODUCTION",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    topic['introduction'],
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Divider(
                  thickness: 0.35,
                  color: Colors.grey,
                ),
                const Card(
                  color: navyBlue,
                  child: SizedBox(
                    height: 40,
                    child: Center(
                      child: Text(
                        "BRIEFING",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    topic['body'],
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    selectionColor: Colors.black87,
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Divider(
                  thickness: 0.35,
                  color: Colors.grey,
                ),
                const Card(
                  color: Color.fromARGB(255, 1, 68, 3),
                  child: SizedBox(
                    height: 40,
                    child: Center(
                      child: Text(
                        'SUMMARY',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.white),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    topic['summary'],
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    selectionColor: Colors.black87,
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Divider(
                  thickness: 0.35,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
