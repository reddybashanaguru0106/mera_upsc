import 'package:flutter/material.dart';

import './widgets/my_subjects.dart';

import 'widgets/my_opt_subjects.dart';
import 'widgets/card_carousel.dart';

class MyDashboardBody extends StatelessWidget {
  const MyDashboardBody({super.key});
  final country = 'in';
  final query = 'upsc';

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
              flex: 2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  HoriontalListViewWithDotIndicator(
                      country: country, query: query),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    toolbarHeight: 8,
                    bottom: const TabBar(
                        indicatorColor: Colors.black87,
                        isScrollable: true,
                        overlayColor: MaterialStatePropertyAll(Colors.black87),
                        tabs: [
                          Tab(
                            icon: Icon(
                              Icons.import_contacts,
                              color: Colors.black87,
                            ),
                            child: Text(
                              'Subjects',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.public,
                              color: Colors.black87,
                            ),
                            child: Text(
                              'Optional subjects',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.leaderboard,
                              color: Colors.black87,
                            ),
                            child: Text(
                              'Dashboard',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ]),
                    // title: const Text('Tabs Demo'),
                  ),
                  body: const TabBarView(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 0,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(8.0, 0, 0, 2.0),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_outlined,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Mysubjects(),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 0,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      size: 30,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: MyOptSubjects(),
                              )
                            ],
                          ))
                    ],
                  ),
                  // ),
                ),
              ),
            ),
          ],
        ));
  }
}
