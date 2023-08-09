// import 'dart:io';

// import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:flutter/material.dart';
// import 'package:mera_upsc/app.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';
import 'src/authentication.dart';

const Color darkBlue = Color(0xFF12202F);

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

  Future<User?> _getCurrentUser() async {
    final user = FirebaseAuth.instance.currentUser;
    return user;
  }

  @override
  Widget build(BuildContext context) {
    // final appState = Provider.of<ApplicationState>(context);
    return Drawer(
        child: FutureBuilder<User?>(
      future: _getCurrentUser(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container();
        }

        if (snapshot.hasData) {
          final user = snapshot.data!;
          final username = user.displayName ?? "User";
          final email = user.email ?? "No Email";
          return ListView(padding: EdgeInsets.zero, children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              // color: Theme.of(context).primaryColor,
              decoration: const BoxDecoration(color: Colors.white70),
              child: Center(
                  child: Column(
                children: <Widget>[
                  Container(
                    // color: Colors.white,
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('./images/appLogo.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    username,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    email,
                    style: const TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            Consumer<ApplicationState>(
                builder: (context, appState, _) => AuthFunc(
                      loggedIn: appState.loggedIn,
                      signOut: () async {
                        await FirebaseAuth.instance.signOut();
                      },
                    )),
          ]);
        } else {
          return const Text("Not Logged In");
        }
      },
    ));
  }

  Widget buildImage() {
    final image = NetworkImage(imagePath);

    return ClipOval(
      child: Material(
        color: Colors.white,
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
