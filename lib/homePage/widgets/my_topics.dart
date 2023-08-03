import 'package:flutter/material.dart';
import 'package:mera_upsc/homePage/widgets/my_topic_detail.dart';

const Color darkBlue = Color(0xFF12202F);

class MyTopics extends StatelessWidget {
  final Map<String, dynamic> chapter;
  const MyTopics({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> topics = chapter['topics'] as List<dynamic>;
    // ignore: avoid_print
    print(topics);
    return MaterialApp(
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all<Color>(darkBlue),
          thickness: MaterialStateProperty.all<double>(2.0),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "${chapter['id']}. ${chapter['title']}",
          ),
          backgroundColor: darkBlue,
          elevation: 3,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SizedBox(
          // height: 800,
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
                        child: Card(
                          elevation: 2,
                          child: Container(
                            // width: 400,
                            height: 50,
                            margin: const EdgeInsets.all(4),
                            padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white70,
                            ),
                            child: Row(
                              children: [
                                // const SizedBox(
                                //   height: 50,
                                //   width: 10,
                                //   child:
                                const Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                                    child: Icon(
                                      Icons.web_stories_outlined,
                                      color: Color.fromARGB(255, 114, 137, 156),
                                    ),
                                  ),
                                ),
                                // ),
                                // const Spacer(
                                //     // flex: 2,
                                //     ),
                                // SizedBox(
                                //   width: 280,
                                //   // height: 200,
                                //   child: Column(
                                //     crossAxisAlignment:
                                //         CrossAxisAlignment.start,
                                //     children: [
                                //       Padding(
                                // padding: const EdgeInsets.fromLTRB(
                                //     0, 0, 0, 0),
                                // child:
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    "${topic['id']}. ${topic['title'].toUpperCase()}",
                                    style: const TextStyle(
                                      fontSize: 16,

                                      // overflow: TextOverflow.visible,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 5, 5, 5),
                                    ),
                                    maxLines: 2,
                                    // textAlign: TextAlign.left,
                                    // textDirection: TextDirection.ltr,
                                  ),
                                ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Expanded(
                                  flex: 1,
                                  child: Transform.scale(
                                    scale: 1.0,
                                    child: const Icon(
                                      Icons.navigate_next_outlined,
                                      color: Color.fromARGB(255, 216, 219, 220),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : const Text('No topics added!!!'),
          ),
        ),
      ),
    );
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
