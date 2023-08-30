// import 'dart:js_interop';

import 'package:flutter/material.dart';
// import 'mcq.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:mera_upsc/testPage/mcq.dart';

class MyTestDetails extends StatelessWidget {
  final MyQuestions;
  const MyTestDetails({super.key, required this.MyQuestions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('MERA UPSC')),
      ),

      // ignore: avoid_unnecessary_containers

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: MyQuestions.isEmpty ? 0 : MyQuestions.length,
              itemBuilder: (context, index) {
                final d = MyQuestions[index];
                final optionsMap = {1: "A", 2: "B", 3: "C", 4: "D"};
                // print(d['selectedOption']);
                print(optionsMap[d['selectedOption']]);
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    '${index + 1}. ${d['question']}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8,
                                    ),
                                    maxLines: 3,
                                  ),
                                  d['answer'] == optionsMap[d['selectedOption']]
                                      ? const Icon(
                                          Icons.check,
                                          color: Colors.green,
                                        )
                                      : d['selectedOption'] == 0
                                          ? const Icon(
                                              Icons.radio_button_unchecked)
                                          : const Icon(
                                              Icons.close,
                                              color: Colors.red,
                                            )
                                ],
                              )),
                          const SizedBox(height: 2),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text('1. ${d['A']}'),
                                  Text('2. ${d['B']}'),
                                  Text('3. ${d['C']}'),
                                  Text('4. ${d['D']}'),
                                ],
                              ),
                              Column(
                                children: [
                                  d['selectedOption'] == 0
                                      ? Text('Selected answer: Not answered')
                                      : Text(
                                          'Selected answer: ${optionsMap[d['selectedOption']]}'),
                                  Text('Correct answer. ${d['answer']}'),
                                ],
                              )
                            ],
                          )
                          // Implement your RadioListTiles here
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
