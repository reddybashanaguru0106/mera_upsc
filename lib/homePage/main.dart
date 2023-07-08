import 'package:flutter/material.dart';

import './widgets/my_subjects.dart';

import 'widgets/my_opt_subjects.dart';
import 'widgets/card_carousel.dart';

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.0, 0, 0, 2.0),
                          child: Text(
                            'Subjects',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_outlined)
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Mysubjects(),
                  )
                ],
              ),
            ),
            const Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(8.0, 0, 0, 2.0),
                            child: Text(
                              'OPT-Subjects',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w900),
                            ),
                          ),
                          Icon(Icons.arrow_forward_outlined)
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: MyOptSubjects(),
                    )
                  ],
                )
                // MyOptSubjects(),
                )
          ],
        ));
  }
}
