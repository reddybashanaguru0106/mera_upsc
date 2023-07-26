import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

const Color darkBlue = Color(0xFF12202F);
// import './helper/index.dart';

class MyQuestions extends StatefulWidget {
  final subject;
  const MyQuestions({Key? key, required this.subject}) : super(key: key);

  @override
  State<MyQuestions> createState() => _MyQuestionsState();
}

class _MyQuestionsState extends State<MyQuestions> {
  int? selectedOption;
  // bool _isLoading = false;
  // var _questions = [];

  // @override
  // void initState() {
  //   super.initState();
  // }

  // Future<void> _loadQuestions() async {
  //   setState(() {
  //     _isLoading = true;
  //   });

  //   try {
  //     final questions =
  //         await getQuestionsBySubjectId(widget.subject['subjectId']);
  //     setState(() {
  //       _questions = questions;
  //     });
  //     print(questions);
  //   } catch (e) {
  //     showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         title: const Text('Error'),
  //         content: const Text('Failed to fetch news articles.'),
  //         actions: [
  //           TextButton(
  //             onPressed: () => Navigator.pop(context),
  //             child: const Text('OK'),
  //           ),
  //         ],
  //       ),
  //     );
  //   } finally {
  //     setState(() {
  //       _isLoading = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('questions')
            .doc('1') // Access the document with ID "1"
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final loadedQuestionData = snapshot.data!.data();
          if (loadedQuestionData == null) {
            return const Center(
              child: Text('No data found.'),
            );
          }

          final loadedQuestions = loadedQuestionData['questions'];

          final questions = loadedQuestions
              .where((element) => element['subjectId'] == '1')
              .toList();
          print(questions);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: darkBlue,
              title: Text(
                'Test - ${widget.subject['title']}',
                maxLines: 3,
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: questions.isEmpty ? 0 : questions.length,
                    itemBuilder: (context, index) {
                      final question = questions[index];
                      return Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        margin: const EdgeInsets.all(8),
                        child: Card(
                          elevation: 5.0,
                          shadowColor: Colors.blueGrey,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${index + 1}. ${question['question']}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                RadioListTile<int>(
                                  title: Text("A. ${question['A']}"),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 0, 8, 0),
                                  value: 1,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value;
                                    });
                                  },
                                ),
                                RadioListTile<int>(
                                  title: Text("B. ${question['B']}"),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 0, 8, 0),
                                  value: 2,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value;
                                    });
                                  },
                                ),
                                RadioListTile<int>(
                                  title: Text("C. ${question['C']}"),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 0, 8, 0),
                                  value: 3,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value;
                                    });
                                  },
                                ),
                                RadioListTile<int>(
                                  title: Text("D. ${question['D']}"),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 0, 8, 0),
                                  value: 4,
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value;
                                    });
                                  },
                                ),
                                // Implement your RadioListTiles here
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
