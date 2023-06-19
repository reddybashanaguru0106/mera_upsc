import 'package:flutter/material.dart';
import 'package:mera_upsc/navbar.dart';
import '../footer.dart';
import 'content.dart';



class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Mera UPSC',
      theme: ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    // primaryColor:Color.fromARGB(255, 225, 120, 0),

    // Define the default font family.
    fontFamily: 'Roboto',

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
      // titleLarge: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
      bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind'),
    ),
  ),
      home:const AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const NavBar(
        imagePath: 'https://shorturl.at/jrFG6',
        ),
      appBar: AppBar(
        title:const Center(child: Text('MERA UPSC')),
        toolbarHeight:50,
        leading: Builder(
        builder: (BuildContext context) {   
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () { Scaffold.of(context).openDrawer(); },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('notification')));
            },
      ),
      ] ,
      backgroundColor: Colors.pink,
    ),
        body:const MyDashboardBody(),
        bottomNavigationBar: const BottomNavigationBarExample()
      );

  }
}


