import 'package:flutter/material.dart';

import 'MySubjects.dart';

import 'MyOptSubjects.dart';
import 'cf.dart';

class MyDashboardBody extends StatelessWidget {
  const MyDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        height: 750,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image.asset(''),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  CurrentAffairsScreen(),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 400,
              child: Mysubjects(),
            ),
            const SizedBox(
              height: 200,
              child: MyOptSubjects(),
            ),
          ],
        ));
  }
}
