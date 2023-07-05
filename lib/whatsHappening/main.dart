import 'package:flutter/material.dart';
// import 'package:mera_upsc/app.dart';
import 'widgets/sports.dart';
// import 'package:flutter_icons/flutter_icons.dart';

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
                      Icons.desktop_windows_outlined,
                      color: Colors.black87,
                    ),
                    child: Text(
                      'Technology',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.business_outlined,
                      color: Colors.black87,
                    ),
                    child: Text(
                      'Business',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.science_outlined,
                      color: Colors.black87,
                    ),
                    child: Text(
                      'Science',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.sports_soccer_outlined,
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
                      Icons.newspaper_outlined,
                      color: Colors.black87,
                    ),
                    child: Text(
                      'General',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.health_and_safety_outlined,
                      color: Colors.black87,
                    ),
                    child: Text(
                      'Health',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.movie_outlined,
                      color: Colors.black87,
                    ),
                    child: Text(
                      'Entertainment',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              // title: const Text('Tabs Demo'),
            ),
            body: const TabBarView(
              children: [
                MyNewsTab(category: 'technology'),
                MyNewsTab(category: 'business'),
                MyNewsTab(category: 'science'),
                MyNewsTab(category: 'sports'),
                MyNewsTab(category: 'general'),
                MyNewsTab(category: 'health'),
                MyNewsTab(category: 'entertainment'),
              ],
            ),
          ),
        ),
        debugShowCheckedModeBanner: false);
  }
}
