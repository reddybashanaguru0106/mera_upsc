import 'package:flutter/material.dart';
import 'package:mera_upsc/homePage/widgets/my_topic_detail.dart';

const Color darkBlue = Color(0xFF12202F);

class MyTopics extends StatelessWidget {
  final Map<String, dynamic> chapter;
  const MyTopics({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> topics = chapter['topics'] as List<dynamic>;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: darkBlue,
          leadingWidth: 14.0,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${chapter['id']}.${chapter['title'].toUpperCase()}",
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
          ),
          titleTextStyle: const TextStyle(
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
            textBaseline: TextBaseline.ideographic,
            wordSpacing: 1,
          ),
        ),
        body: SizedBox(
          child: Scrollbar(
            child: topics.isNotEmpty
                ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: topics.isEmpty ? 0 : topics.length,
                    itemBuilder: (BuildContext context, int index) {
                      final topic = topics[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyTopicDetail(topic: topic),
                            ),
                          );
                        },
                        child: Container(
                          width: 300,
                          height: 75,
                          constraints: const BoxConstraints(maxWidth: 300),
                          margin: const EdgeInsets.all(0),
                          // padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white70,
                          ),

                          child: Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                      child: Icon(
                                        Icons.web_stories_outlined,
                                        color:
                                            Color.fromARGB(255, 114, 137, 156),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                      "${topic['id']}. ${topic['title'].toUpperCase()}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 5, 5, 5),
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Transform.scale(
                                      scale: 1.0,
                                      child: const Icon(
                                        Icons.navigate_next_outlined,
                                        color:
                                            Color.fromARGB(255, 216, 219, 220),
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
                  )
                : const Text('No topics added!!!'),
          ),
        ));
  }
}
// class MyTopic {
//   final String icon;
//   final String description;

//   MyTopic({
//     required this.icon,
//     required this.description,
//   });
// }
