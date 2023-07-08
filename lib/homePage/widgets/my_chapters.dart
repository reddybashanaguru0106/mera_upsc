import 'package:flutter/material.dart';
import 'my_topics.dart';

class MyChapters extends StatelessWidget {
  final subject;
  const MyChapters({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Current events of national and international importance',
            maxLines: 3,
            style: TextStyle(
              color: Color.fromARGB(248, 239, 243, 244),
              fontSize: 20,
            ),
          ),
        ),
        body: SizedBox(
            child: Scrollbar(
          thickness: 5,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: subject['chapters']?.length,
              itemBuilder: (BuildContext context, int index) {
                final chapter = subject['chapters'][index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyTopics(chapter: chapter),
                      ),
                    );
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    margin: const EdgeInsets.all(0),
                    color: const Color.fromARGB(179, 243, 253, 253),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Row(
                          children: [
                            const SizedBox(
                                height: 200,
                                width: 10,
                                child: Icon(
                                  Icons.receipt_long,
                                  color: Color.fromARGB(255, 180, 193, 193),
                                  size: 60,
                                )),
                            const Spacer(),
                            SizedBox(
                              width: 250,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 10, 0, 0)),
                                    Text(
                                      chapter['title'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 8),
                                    Column(
                                      children: [
                                        Text(
                                          chapter['description'],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                            Transform.scale(
                              scale: 1.5,
                              child: const Icon(
                                Icons.navigate_next_sharp,
                                color: Color.fromARGB(255, 222, 217, 217),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        )));
  }
}

class MyChapter {
  final String title;
  final String description;
  final String icon;

  MyChapter({
    required this.title,
    required this.description,
    required this.icon,
  });
}
