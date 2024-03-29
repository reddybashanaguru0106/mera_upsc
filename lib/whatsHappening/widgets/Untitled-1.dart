// ignore_for_file: file_names, duplicate_ignore
// ignore: file_names
// import 'package:flutter/material.dart';
// import './helper/index.dart';

// class MyQuestions extends StatefulWidget {
//   final subject;
//   const MyQuestions({Key? key, required this.subject}) : super(key: key);

//   @override
//   State<MyQuestions> createState() => _MyQuestionsState();
// }

// class _MyQuestionsState extends State<MyQuestions> {
//   int? selectedOption;
//   bool _isLoading = false;
//   var _questions = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadQuestions();
//   }

//   Future<void> _loadQuestions() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final questions =
//           await getQuestionsBySubjectId(widget.subject['subjectId']);
//       setState(() {
//         _questions = questions;
//       });
//       print(questions);
//     } catch (e) {
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: const Text('Error'),
//           content: const Text('Failed to fetch news articles.'),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: const Text('OK'),
//             ),
//           ],
//         ),
//       );
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('TEST-1'),
//       ),
//       body: _isLoading
//           ? Center(
//               child: CircularProgressIndicator(),
//             )
//           : SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
//                   FutureBuilder(
//                     future: _loadQuestions(),
//                     builder: (context, snapshot) {
//                       if (snapshot.connectionState == ConnectionState.waiting) {
//                         return Center(
//                           child: CircularProgressIndicator(),
//                         );
//                       } else if (snapshot.hasError) {
//                         return Center(
//                           child: Text('Failed to fetch questions.'),
//                         );
//                       } else {
//                         return ListView.builder(
//                           shrinkWrap: true,
//                           physics: const NeverScrollableScrollPhysics(),
//                           itemCount: _questions.length,
//                           itemBuilder: (context, index) {
//                             final question = _questions[index];
//                             return Container(
//                               padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//                               margin: const EdgeInsets.all(8),
//                               child: Card(
//                                 elevation: 5.0,
//                                 shadowColor: Colors.blueGrey,
//                                 child: Padding(
//                                   padding:
//                                       const EdgeInsets.fromLTRB(40, 0, 5, 0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Text(
//                                           question['title'],
//                                           style: const TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 18,
//                                           ),
//                                         ),
//                                       ),
//                                       const SizedBox(height: 8),
//                                       RadioListTile<int>(
//                                         title: Text(question.option1),
//                                         contentPadding:
//                                             const EdgeInsets.fromLTRB(
//                                                 16, 0, 8, 0),
//                                         value: 1,
//                                         groupValue: selectedOption,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             selectedOption = value;
//                                           });
//                                         },
//                                       ),
//                                       RadioListTile<int>(
//                                         title: Text(question.option2),
//                                         contentPadding:
//                                             const EdgeInsets.fromLTRB(
//                                                 16, 0, 8, 0),
//                                         value: 2,
//                                         groupValue: selectedOption,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             selectedOption = value;
//                                           });
//                                         },
//                                       ),
//                                       RadioListTile<int>(
//                                         title: Text(question.option3),
//                                         contentPadding:
//                                             const EdgeInsets.fromLTRB(
//                                                 16, 0, 8, 0),
//                                         value: 3,
//                                         groupValue: selectedOption,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             selectedOption = value;
//                                           });
//                                         },
//                                       ),
//                                       RadioListTile<int>(
//                                         title: Text(question.option4),
//                                         contentPadding:
//                                             const EdgeInsets.fromLTRB(
//                                                 16, 0, 8, 0),
//                                         value: 4,
//                                         groupValue: selectedOption,
//                                         onChanged: (value) {
//                                           setState(() {
//                                             selectedOption = value;
//                                           });
//                                         },
//                                       ),
//                                       // Implement your RadioListTiles here
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         );
//                       }
//                     },
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('Submit'),
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }
// }
