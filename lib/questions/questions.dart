import 'package:flutter/material.dart';
import 'package:mera_upsc/questions/newquestion.dart';

class Questions extends StatelessWidget {
  const Questions({
    super.key,
    // required String subjectId,
    // required String question,
    // required String A,
    // required String C,
    // required String B,
    // required String answer,
    // required String D,
    // required String id
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SizedBox(
      child: Newquestions(),
    ));
  }
}
