import 'package:flutter/material.dart';
import 'widgets/sports.dart';

class WhatsHappeningMain extends StatefulWidget {
  const WhatsHappeningMain({super.key});

  @override
  State<WhatsHappeningMain> createState() => _MainState();
}

class _MainState extends State<WhatsHappeningMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 7,
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
                      Icons.sports_soccer,
                      color: Colors.black87,
                    ),
                    child: Text(
                      'Sports',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Tab(
                      icon: Icon(
                    Icons.directions_transit,
                    color: Colors.black87,
                  )),
                  Tab(
                      icon: Icon(
                    Icons.directions_bike,
                    color: Colors.black87,
                  )),
                ],
              ),
              // title: const Text('Tabs Demo'),
            ),
            body: const TabBarView(
              children: [
                MySportsTab(),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ),
        debugShowCheckedModeBanner: false);
  }
}
