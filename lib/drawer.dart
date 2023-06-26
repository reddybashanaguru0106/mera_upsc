// import 'dart:io';

// import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';
import 'src/authentication.dart';

class NavBar extends StatelessWidget {
  final String imagePath;
  final bool isEdit;
  // final VoidCallback onClicked;

  const NavBar({
    Key? key,
    required this.imagePath,
    this.isEdit = false,
    // required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final appState = Provider.of<ApplicationState>(context);
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          // color: Theme.of(context).primaryColor,
          decoration: const BoxDecoration(color: Colors.white70),
          child: Center(
              child: Column(
            children: <Widget>[
              Container(
                // color: Colors.black87,
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 10,
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('./images/sampleProfile.png'),
                      fit: BoxFit.fill),
                ),
              ),
              const Text(
                'S.Ganesh',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'sampathiganesh0106@gmail.com',
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ),
        const ListTile(
          leading: Icon(Icons.person_2_outlined),
          title: Text('Profile'),
          selectedColor: Colors.amber,
          selectedTileColor: Colors.amber,
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        Consumer<ApplicationState>(
            builder: (context, appState, _) => AuthFunc(
                  loggedIn: appState.loggedIn,
                  signOut: () async {
                    await FirebaseAuth.instance.signOut();
                  },
                )),
      ]),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            isEdit ? Icons.add_a_photo : Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
