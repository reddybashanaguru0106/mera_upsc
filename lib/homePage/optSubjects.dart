import 'package:flutter/material.dart';

class MyOptionalSubjects extends StatelessWidget {
  const MyOptionalSubjects({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 1,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text("He'd have you all unravel at the"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Heed not the rabble'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Sound of screams but the'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Who scream'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Revolution is coming...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Revolution, they...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Revolution, they...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Revolution, they...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Revolution, they...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Revolution, they...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Revolution, they...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Revolution, they...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Revolution, they...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black87,
          child: const Text('Revolution, they...'),
        ),
      ],
    );
  }
}
