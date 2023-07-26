import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

// FirebaseFirestore.instance.collection('subjects').snapshots(),

// Function to fetch all questions and filter by subjectId
Future<List<Map<String, dynamic>>> getQuestionsBySubjectId(
    String subjectId) async {
  try {
    final CollectionReference questionsRef =
        FirebaseFirestore.instance.collection('questions');
    final QuerySnapshot snapshot = await questionsRef.get();

    final List<Map<String, dynamic>> filteredQuestions = [];
    for (final doc in snapshot.docs) {
      final Map<String, dynamic> questionData =
          doc.data() as Map<String, dynamic>; // Explicit casting
      if (questionData['subjectId'] == subjectId) {
        filteredQuestions.add({'id': doc.id, ...questionData});
      }
    }

    return filteredQuestions;
  } catch (error) {
    // Handle any errors that occur during the fetch
    print('Error fetching questions: $error');
    return [];
  }
}

// Example usage:
// final String subjectIdToFilter = 'your_subject_id_here';
// getQuestionsBySubjectId(subjectIdToFilter)
//     .then((questions) {
//   // Use the filtered questions here
//   print(questions);
// })
//     .catchError((error) {
//   // Handle any errors that might occur during the process
//   print('Error: $error');
// });
