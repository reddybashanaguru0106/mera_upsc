import 'package:flutter/material.dart';
import 'package:mera_upsc/testPage/mcq.dart';
import 'my_topics.dart';

const Color darkBlue = Color(0xFF12202F);

class MyChapters extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final subject;

  const MyChapters({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        leadingWidth: 14.0,
        toolbarHeight: 72,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(14, 16, 0, 10),
          child: Text(
            "${subject['id']}.${subject['title'].toUpperCase()}",
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
            child: TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyQuestions(subject: subject)));
              },
              icon: const Icon(Icons.play_circle),
              label: const Text(
                'Start Test',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                iconColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
            ),
          )
        ],
        titleTextStyle: const TextStyle(
          letterSpacing: 1.5,
          fontWeight: FontWeight.w600,
          textBaseline: TextBaseline.ideographic,
          wordSpacing: 1,
        ),
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
                        constraints: const BoxConstraints(maxWidth: 300),
                        margin: const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white70,
                        ),
                        // color: const Color.fromARGB(179, 243, 253, 253),
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Icon(
                                        Icons.receipt_long,
                                        color:
                                            Color.fromARGB(255, 180, 193, 193),
                                        size: 60,
                                      ),
                                    )),
                                Expanded(
                                    flex: 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 6),
                                          child: Text(
                                            "${chapter['id']}.${chapter['title'].toUpperCase()}",
                                            maxLines: 2,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Text(
                                          chapter['description'],
                                          maxLines: 1,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Transform.scale(
                                    scale: 1.5,
                                    child: const Icon(
                                      Icons.navigate_next_sharp,
                                      color: Color.fromARGB(255, 222, 217, 217),
                                    ),
                                  ),
                                )
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
