import 'package:flutter/material.dart';
// import 'package:mera_upsc/homePage/content.dart';
import 'testdetails.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyTestPage extends StatelessWidget {
  const MyTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('tests').snapshots(),
      builder: ((context, snapshots) {
        if (snapshots.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); // Show a loading indicator while waiting for data.
        }

        if (!snapshots.hasData) {
          return const Text(
              'No data found'); // Show a message if there is no data available.
        }

        final loadedTests = snapshots.data!.docs;
        final user = FirebaseAuth.instance.currentUser;
        final userTests = loadedTests
            .where((eachTest) => eachTest['userId'] == user?.uid)
            .toList();
        return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: userTests.isEmpty ? 0 : userTests.length,
            itemBuilder: (context, index) {
              final test = userTests[index].data();
              var questions = test['questions'];
              for (var question in questions) {
                question['selectedOption'] = 0;
              }
              for (var aq in test['attemptedQuestions']) {
                final aqId = aq['questionId'];
                final selectedOption = aq['selectedOption'];
                for (var question in questions) {
                  if (question['id'] == aqId) {
                    question['selectedOption'] = selectedOption;
                    break; // Exit the loop after updating
                  }
                }
              }
              test['questions'] = questions;
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MyTestDetails(MyQuestions: questions),
                    ),
                  );
                },
                child: Container(
                  width: 450,
                  height: 140,
                  margin: const EdgeInsets.all(8),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                      child: Row(
                        children: [
                          SizedBox(
                              height: 100,
                              width: 60,
                              child: Image.asset('images/appLogo.png')),
                          SizedBox(
                            width: 150,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text(
                                  //   '${test['questions']['subjectId']}',
                                  //   style: const TextStyle(
                                  //       fontWeight: FontWeight.bold,
                                  //       fontSize: 18),
                                  // ),
                                  const SizedBox(height: 8),
                                  Text(
                                    '${test['testName']}',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Attempted Questions: ${test['attemptedQCount']}',
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                  Text(
                                    'Score: ${test['score']}',
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  )
                                ]),
                          ),
                          const SizedBox(
                            height: 140,
                            width: 100,
                            child: Icon(Icons.navigate_next_sharp),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
      }),
    );
  }
}
