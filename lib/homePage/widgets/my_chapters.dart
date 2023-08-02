// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mera_upsc/testPage/mcq.dart';
import 'my_topics.dart';

const Color darkBlue = Color(0xFF12202F);

class MyChapters extends StatelessWidget {
  final subject;

  const MyChapters({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        title: Text(
          "${subject['id']}. ${subject['title'].toUpperCase()}",
          maxLines: 3,
          style: const TextStyle(
            color: Color.fromARGB(248, 239, 243, 244),
            fontSize: 16,
          ),
        ),
        actions: [
          SizedBox(
            width: 100,
            height: 10,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyQuestions(subject: subject)));
              },
              child: const Text('Take Test'),
            ),
          ),
        ],
      ),
      body: SizedBox(
        child: Scrollbar(
          thickness: 5,
          child: subject['chapters'].isEmpty
              ? const Center(
                  child: Text('Oops..! No data Found!'),
                )
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: subject['chapters'].isEmpty
                      ? 0
                      : subject['chapters']?.length,
                  itemBuilder: (BuildContext context, int index) {
                    final chapter = subject?['chapters']?[index];
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
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Row(
                              children: [
                                const Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                                      child: Icon(
                                        Icons.receipt_long,
                                        color:
                                            Color.fromARGB(255, 180, 193, 193),
                                        size: 60,
                                      ),
                                    )),
                                const Spacer(),
                                SizedBox(
                                  width: 250,
                                  height: 200,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 10, 0, 0)),
                                      Text(
                                        "${chapter['id']}. ${chapter['title'].toUpperCase()}",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      SizedBox(
                                        height: 20,
                                        child: Column(
                                          children: [
                                            Text(
                                              chapter['description'],
                                              maxLines: 1,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Transform.scale(
                                  scale: 1.5,
                                  child: const Icon(
                                    Icons.navigate_next_sharp,
                                    color: Color.fromARGB(255, 222, 217, 217),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
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
