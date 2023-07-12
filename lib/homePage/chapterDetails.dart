import 'package:flutter/material.dart';
import 'package:mera_upsc/homePage/summery.dart';

const Color darkBlue = Color(0xFF12202F);

class MyChapterDetails extends StatelessWidget {
  const MyChapterDetails({super.key});

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
          title: const Text('My App'),
          backgroundColor: darkBlue,
          elevation: 4,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SizedBox(
          child: Scrollbar(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: chapters.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HistoryPage(),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    child: Container(
                      width: 450,
                      height: 80,
                      margin: const EdgeInsets.all(4),
                      padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white70,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 50,
                            width: 10,
                            child: Icon(
                              Icons.web_stories_outlined,
                              color: Color.fromARGB(255, 114, 137, 156),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 280,
                            child: Text(
                              chapters[index].description,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              maxLines: 3,
                            ),
                          ),
                          Transform.scale(
                            scale: 1.5,
                            child: const Icon(
                              Icons.navigate_next_outlined,
                              color: Color.fromARGB(255, 216, 219, 220),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MyChapters {
  final String icon;
  final String description;

  MyChapters({
    required this.icon,
    required this.description,
  });
}

List<MyChapters> chapters = [
  MyChapters(icon: '1.', description: 'Topic-1'),
  MyChapters(icon: '2.', description: 'Topic-2'),
  MyChapters(icon: '3.', description: 'Topic-3'),
  MyChapters(icon: '4.', description: 'Topic-4'),
  MyChapters(icon: '5.', description: 'Topic-5'),
  MyChapters(icon: '6.', description: 'Topic-6'),
  MyChapters(icon: '7.', description: 'Topic-7'),
  MyChapters(icon: '8.', description: 'Topic-8'),
  MyChapters(icon: '9.', description: 'Topic-9'),
  MyChapters(icon: '10.', description: 'Topic-10'),
  MyChapters(icon: '11.', description: 'Topic-11'),
  MyChapters(icon: '12.', description: 'Topic-12'),
  MyChapters(icon: '13.', description: 'Topic-13'),
  MyChapters(icon: '14.', description: 'Topic-14'),
  MyChapters(icon: '15.', description: 'Topic-15'),
];
