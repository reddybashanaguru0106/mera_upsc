// import 'package:firebase_ui_auth/firebase_ui_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'app_state.dart';
// import 'home_page.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(ChangeNotifierProvider(
//     create: (context) => ApplicationState(),
//     builder: ((context, build) => const App()),
//   ));
//   // return runApp(const App());
// }

// //Add GoRouter configuration outside the App class
// final _router = GoRouter(
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const HomePage(),
//       routes: [
//         GoRoute(
//           path: 'sign-in',
//           builder: (context, state) {
//             return SignInScreen(
//               actions: [
//                 ForgotPasswordAction(((context, email) {
//                   final uri = Uri(
//                     path: '/sign-in/forgot-password',
//                     queryParameters: <String, String?>{
//                       'email': email,
//                     },
//                   );
//                   context.push(uri.toString());
//                 })),
//                 AuthStateChangeAction(((context, state) {
//                   final user = switch (state) {
//                     SignedIn state => state.user,
//                     UserCreated state => state.credential.user,
//                     _ => null
//                   };
//                   if (user == null) {
//                     return;
//                   }
//                   if (state is UserCreated) {
//                     user.updateDisplayName(user.email!.split('@')[0]);
//                   }
//                   if (!user.emailVerified) {
//                     user.sendEmailVerification();
//                     const snackBar = SnackBar(
//                         content: Text(
//                             'Please check your email to verify your email address'));
//                     ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                   }
//                   context.pushReplacement('/');
//                 })),
//               ],
//             );
//           },
//           routes: [
//             GoRoute(
//               path: 'forgot-password',
//               builder: (context, state) {
//                 final arguments = state.queryParameters;
//                 return ForgotPasswordScreen(
//                   email: arguments['email'],
//                   headerMaxExtent: 200,
//                 );
//               },
//             ),
//           ],
//         ),
//         GoRoute(
//           path: 'profile',
//           builder: (context, state) {
//             return ProfileScreen(
//               providers: const [],
//               actions: [
//                 SignedOutAction((context) {
//                   context.pushReplacement('/');
//                 }),
//               ],
//             );
//           },
//         ),
//       ],
//     ),
//   ],
// );
// // end of GoRouter configuration

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Change MaterialApp to MaterialApp.router and add the routerConfig
//     return MaterialApp.router(
//       title: 'Firebase Meetup',
//       theme: ThemeData(
//         buttonTheme: Theme.of(context).buttonTheme.copyWith(
//               highlightColor: Colors.deepPurple,
//             ),
//         primarySwatch: Colors.deepPurple,
//         textTheme: GoogleFonts.robotoTextTheme(
//           Theme.of(context).textTheme,
//         ),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         useMaterial3: true,
//       ),
//       routerConfig: _router,
//       // home: const HomePage(),
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import './src/create.dart';
import 'create.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        // accentColor: Colors.cyan
      ),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // String Name, text, timestamp;

  // getname(name) {
  //   this.Name = name;
  // }

  // getGmail(text) {
  //   this.text = text;
  // }

  // getpassword(timestamp) {
  //   this.timestamp = timestamp;
  // }

  createData() {
    final db = FirebaseFirestore.instance;

    final question = <String, String>{
      "id": "3",
      "subjectId": "1",
      "count": "15",
      "createdAt": "",
      "createdBy": "hemanth",
      "questions": "",
    };

    db
        .collection("Test")
        .doc("3")
        .set(question)
        .onError((e, _) => print("Error writing document: $e"));
  }

  // readData() {
  //   DocumentReference documentReference =
  //       FirebaseFirestore.instance.collection("subjects").doc('1');

  //   documentReference.get().then((datasnapshot) {
  //     print(datasnapshot.data);
  //     // print(datasnapshot.data["text"]);
  //     // print(datasnapshot.data["timestamp"]);
  //   });
  // }

  // UpdateData() {
  //   DocumentReference documentReference =
  //       Firestore.instance.collection("mera Upsc").document(Name);

  //   Map<String, dynamic> guestbook = {
  //     "Name": Name,
  //     "text": text,
  //     "timestamp": timestamp,
  //   };

  //   documentReference.setData(guestbook).WhenComplete(() {
  //     print("guestbook Updated");
  //   });
  // }

  // DeleteData() {
  //   DocumentReference documentReference =
  //       Firestore.instance.Collection("guestbook").document('guestbook');

  //   documentReference.delete().whenComplete(() {
  //     print("guesbook deleted");
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("mera upsc"),
        ),
        body: const MyCreateScreen()
        // StreamBuilder(
        //   stream: FirebaseFirestore.instance.collection('subjects').snapshots(),
        //   builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        //     return ListView.builder(
        //         // itemCount: streamSnapshot.data.docs.length,
        //         itemBuilder: (ctx, index) =>
        //             // print(streamSnapshot.data)
        //             const Text('title')
        //         // Text(streamSnapshot.data.docs.),
        //         );
        //   },
        // )
        );
  }
}
