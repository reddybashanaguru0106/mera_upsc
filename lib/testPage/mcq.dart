// ignore_for_file: prefer_typing_uninitialized_variables

// import 'dart:developer';
// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:provider/provider.dart';
import 'package:mera_upsc/mcq_state.dart';

const Color darkBlue = Color(0xFF12202F);
// import './helper/index.dart';

class MyQuestions extends StatefulWidget {
  final subject;
  const MyQuestions({Key? key, required this.subject}) : super(key: key);

  @override
  State<MyQuestions> createState() => _MyQuestionsState();
}

class _MyQuestionsState extends State<MyQuestions> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final optionsMap = {1: "A", 2: "B", 3: "C", 4: "D"};

    return ChangeNotifierProvider(
      create: (context) => SelectedOptionsProvider(),
      child: StreamBuilder(
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
                .where(
                    (element) => element['subjectId'] == widget.subject['id'])
                .toList();

            // final random = Random();
            // final questions = List<Map<String, dynamic>>.from(rawQuestions)
            //   ..shuffle(random)
            //   ..take(10).toList();
            // print(questions.length);
            // ignore: avoid_print
            // print(questions);
            final mcqState = Provider.of<SelectedOptionsProvider>(context);
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
                        final d = questions[index];
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
                                      '${index + 1}. ${d['question']}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  RadioListTile<int?>(
                                    title: Text("A. ${d['A']}"),
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(16, 0, 8, 0),
                                    value: 1,
                                    groupValue: mcqState.getOption(d['id']),
                                    onChanged: (value) {
                                      // ignore: avoid_print
                                      print(
                                          'Selected option for ${d['id']} changed to $value');

                                      mcqState.setOptionQuestion(d['id'], value,
                                          d as Map<String, dynamic>);
                                    },
                                    // secondary: d['answer'] ==
                                    //         optionsMap['1']
                                    //     ? const Icon(Icons.check_circle,
                                    //         color: Colors
                                    //             .green) // Add the green tick mark icon
                                    //     : null, // Set to null if it's not the correct option
                                  ),
                                  RadioListTile<int?>(
                                    title: Text("B. ${d['B']}"),
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(16, 0, 8, 0),
                                    value: 2,
                                    groupValue: mcqState.getOption(d['id']),
                                    onChanged: (value) {
                                      mcqState.setOptionQuestion(d['id'], value,
                                          d as Map<String, dynamic>);
                                    },
                                    // secondary: d['answer'] ==
                                    //         optionsMap['2']
                                    //     ? const Icon(Icons.check_circle,
                                    //         color: Colors
                                    //             .green) // Add the green tick mark icon
                                    //     : null,
                                  ),
                                  RadioListTile<int?>(
                                    title: Text("C. ${d['C']}"),
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(16, 0, 8, 0),
                                    value: 3,
                                    groupValue: mcqState.getOption(d['id']),
                                    onChanged: (value) {
                                      mcqState.setOptionQuestion(d['id'], value,
                                          d as Map<String, dynamic>);
                                    },
                                    // secondary: d['answer'] ==
                                    //         optionsMap['3']
                                    //     ? const Icon(Icons.check_circle,
                                    //         color: Colors
                                    //             .green) // Add the green tick mark icon
                                    //     : null,
                                  ),
                                  RadioListTile<int?>(
                                    title: Text("D. ${d['D']}"),
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(16, 0, 8, 0),
                                    value: 4,
                                    groupValue: mcqState.getOption(d[
                                        'id']), // Use the selected option from the provider
                                    onChanged: (value) {
                                      mcqState.setOptionQuestion(d['id'], value,
                                          d as Map<String, dynamic>);
                                    },
                                    // secondary:
                                    //     d['answer'] == optionsMap['4']
                                    //         ? const Icon(Icons.check_circle,
                                    //             color: Colors.green)
                                    //         : null,
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
                      onPressed: () async {
                        final userId =
                            user?.uid; // Get the current user's ID here;
                        final timestamp = FieldValue.serverTimestamp();
                        final uniqueTestName =
                            'test_${DateTime.now().millisecondsSinceEpoch}';
                        final correctlyAnsweredCount = mcqState
                            .getSelectedQuestionsList()
                            .where((element) {
                          final alphabetSelectedOption =
                              optionsMap[element['selectedOption']];
                          final correctAnswer = element['d']['answer'];
                          return alphabetSelectedOption == correctAnswer;
                        }).length;
                        final attemptedQCount =
                            mcqState.getSelectedQuestionsList().length;
                        final testScore =
                            (correctlyAnsweredCount / questions.length) * 100;
                        final test = {
                          'userId': userId,
                          'testName': uniqueTestName,
                          'attemptedQuestions':
                              mcqState.getSelectedQuestionsList(),
                          'timestamp': timestamp,
                          'attemptedQCount': attemptedQCount,
                          'correctQCount': correctlyAnsweredCount,
                          'score': testScore,
                          'questions': questions,
                        };
                        print(test);

                        await FirebaseFirestore.instance
                            .collection('tests')
                            .add(test);

                        // Show the pop-up message
                        // ignore: use_build_context_synchronously
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Test Submitted'),
                              content: const Text(
                                  'Your test has been submitted successfully.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
