import 'package:flutter/material.dart';
import 'chapterDetails.dart';

class SubjectsDetail extends StatelessWidget {
  const SubjectsDetail({super.key});

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
              itemCount: mychapter.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyChapterDetails(),
                      ),
                    );
                  },
                  child: Container(
                    width: 300,
                    height: 100,
                    margin: const EdgeInsets.all(0),
                    color: Color.fromARGB(179, 243, 253, 253),
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
                                      mychapter[index].title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 8),
                                    Column(
                                      children: [
                                        Text(
                                          mychapter[index].description,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Column(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              mychapter[index].date,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
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

class MyChapters {
  final String title;
  final String description;
  final String date;
  final String icon;
  final String testIcon;

  MyChapters({
    required this.title,
    required this.description,
    required this.date,
    required this.icon,
    required this.testIcon,
  });
}

List<MyChapters> mychapter = [
  MyChapters(
      title: 'Chapter-1',
      description: 'No.of Topics-5',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter-2',
      description: 'No.of Topics-7',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter-3',
      description: 'No.of Topics-8',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter-4',
      description: 'No.of Topics-9',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter',
      description: 'No.of Topics-6',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter',
      description: 'No.of Topics-88',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter',
      description: 'No.of Topics-4',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter',
      description: 'No.of Topics-3',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter',
      description: 'No.of Topics-9',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter',
      description: 'No.of Topics-8',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter',
      description: 'No.of Topics-7',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter',
      description: 'No.of Topics-5',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
  MyChapters(
      title: 'Chapter',
      description: 'No.of Topics-8',
      date: 'Marks',
      icon: 'receipt_long',
      testIcon: 'navigate_next_sharp'),
];
