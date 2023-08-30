// stream: FirebaseFirestore.instance.collection('tests').snapshots(),
//       builder: (context, snapshots) {
//         if (snapshots.connectionState == ConnectionState.waiting) {
//           return const CircularProgressIndicator(); // Show a loading indicator while waiting for data.
//         }

//         if (!snapshots.hasData) {
//           return const Text(
//               'No data found'); // Show a message if there is no data available.
//         }

//         final loadedTests = snapshots.data!.docs;
//           final user = FirebaseAuth.instance.currentUser;
//         final userTests = loadedTests
//             .where((eachTest) => eachTest[test: test, index: index'userId'] == user?.uid)
//             .toList();



//             List.builder(
//          itemCount: userTests.isEmpty ? 0 : userTests.length,
//           itemBuilder: (BuildContext context, int index) {
//             final test = userTests[index].data();
//             return HorizontalPlaceItem(test: test, index: index);
//           },
//             )
//       }














      // import 'package:flutter/material.dart';
// // import 'mcq.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class MyTestDetails extends StatelessWidget {
//   const MyTestDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text('MERA UPSC')),
//       ),

//       // ignore: avoid_unnecessary_containers

//       body: StreamBuilder(
//           stream: FirebaseFirestore.instance.collection('tests').snapshots(),
//           builder: (context, snapshots) {
//             if (snapshots.connectionState == ConnectionState.waiting) {
//               return const CircularProgressIndicator(); // Show a loading indicator while waiting for data.
//             }

//             if (!snapshots.hasData) {
//               return const Text(
//                   'No data found'); // Show a message if there is no data available.
//             }

//             final loadedTests = snapshots.data!.docs;
//             final user = FirebaseAuth.instance.currentUser;
//             final userTests = loadedTests
//                 .where((eachTest) => eachTest['userId'] == user?.uid)
//                 .toList();

//             ListView.builder(
//               itemCount: userTests.isEmpty ? 0 : userTests.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final test = userTests[index].data();
//                 return Container(test: test, index: index);
//               },
//             );
//           }),

//       children: [
//         ListView.builder(
//             scrollDirection: Axis.vertical,
//             itemCount: myTests.length,
//             itemBuilder: (context, index) {
//               return InkWell(
//                 // onTap: () {
//                 //   Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //       builder: (context) => const MyQuestions(),
//                 //     ),
//                 //   );
//                 // },
//                 child: Container(
//                   width: 450,
//                   height: 100,
//                   margin: const EdgeInsets.all(8),
//                   child: Card(
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
//                       child: Row(
//                         children: [
//                           SizedBox(
//                               height: 140,
//                               width: 80,
//                               child: Image.asset(myTests[index].image)),
//                           SizedBox(
//                             width: 150,
//                             child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     myTests[index].title,
//                                     style: const TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18),
//                                   ),
//                                   const SizedBox(height: 8),
//                                   Text(
//                                     myTests[index].description,
//                                     style: const TextStyle(fontSize: 16),
//                                   ),
//                                   const SizedBox(height: 8),
//                                   Text(
//                                     myTests[index].date,
//                                     style: const TextStyle(
//                                         color: Colors.grey, fontSize: 14),
//                                   )
//                                 ]),
//                           ),
//                           const SizedBox(
//                             // height: 140,
//                             width: 100,
//                             child: Icon(Icons.navigate_next_sharp),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             }),
//       ],
//     );
//   }
// }