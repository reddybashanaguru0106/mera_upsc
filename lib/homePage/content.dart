import 'package:flutter/material.dart';

import 'mySubjects.dart';

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
              flex: 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  HoriontalListViewWithDotIndicator(),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: Mysubjects(),
            ),
            const Expanded(
              flex: 1,
              child: MyOptSubjects(),
            )
          ],
        ));
  }
}
