import 'package:flutter/material.dart';
import 'homePage/screen.dart';
// import 'package:mera_upsc/footer.dart';


void main() {
  return runApp(const AppBarApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         appBar: null,
//         body: MyBackgroundImage(),
//       ),
//     );
//   }
// }

// class MyBackgroundImage extends StatelessWidget {
//   const MyBackgroundImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           Image.asset(
//             './images/mainLogo.png',
//             opacity: const AlwaysStoppedAnimation(80),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: FormExample(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FormExample extends StatefulWidget {
//   const FormExample({super.key});

//   @override
//   State<FormExample> createState() => _FormExampleState();
// }

// class _FormExampleState extends State<FormExample> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         width: 300.0,
//         height: 160.0,
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               TextFormField(
//                 decoration: const InputDecoration(
//                     hintText: 'Enter via mobile number',
//                     icon: Icon(Icons.phone_iphone),
//                     iconColor: Colors.black54),
//                 validator: (String? value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter mobile number';
//                   }
//                   return null;
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Validate will return true if the form is valid, or false if
//                     // the form is invalid.
//                     if (_formKey.currentState!.validate()) {
//                       // Process data.
//                     }
//                   },
//                   child: const Center(child: Text('Get OTP')),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
