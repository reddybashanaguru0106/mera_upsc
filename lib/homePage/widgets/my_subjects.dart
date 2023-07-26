import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:mera_upsc/app.dart';
import './my_chapters.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color darkBlue = Color(0xFF12202F);

Color generateDarkishColor() {
  const brightnessThreshold = 0.5; // Adjust this value to control the darkness
  const contrastThreshold = 4.5; // Adjust this value to control the contrast

  while (true) {
    final color =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

    // Calculate the perceived brightness of the color
    final perceivedBrightness = color.computeLuminance();

    // Calculate the contrast ratio between the color and white
    final contrastRatio = (perceivedBrightness + 0.05) / 0.05;

    if (perceivedBrightness < brightnessThreshold &&
        contrastRatio >= contrastThreshold) {
      return color;
    }
  }
}

class Mysubjects extends StatefulWidget {
  const Mysubjects({Key? key}) : super(key: key);

  @override
  State<Mysubjects> createState() => _MysubjectsState();
}

class _MysubjectsState extends State<Mysubjects> {
  var subjects = [];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('subjects').snapshots(),
      builder: (context, snapshots) {
        final loadedSubjects = snapshots.data!.docs;
        final mainSubjects = loadedSubjects
            .where((element) => element['subjectType'] == 'main')
            .toList();
        return GridView.builder(
          scrollDirection: Axis.horizontal,
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: mainSubjects.isEmpty ? 0 : mainSubjects.length,
          itemBuilder: (BuildContext context, int index) {
            final subject = mainSubjects[index].data();
            return HorizontalPlaceItem(subject: subject, index: index);
          },
        );
      },
    );
  }
}

class HorizontalPlaceItem extends StatelessWidget {
  final Map subject;
  final int index;

  const HorizontalPlaceItem(
      {super.key, required this.subject, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      // shadowColor: Colors.deepOrange,
      elevation: 0,
      child: InkWell(
        child: SizedBox(
          height: 145.0,
          width: 170.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      getIconData(subject['iconName']),
                      color: darkBlue,
                      size: 40.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    alignment: Alignment.topLeft,
                    child: Badge(
                      backgroundColor: generateDarkishColor(),
                      label: Text("Paper Type: ${subject["paperType"]}"),
                      // backgroundColor: Colors.orangeAccent,
                      // label: Text("Paper Type: ${subject["paperType"]}"),
                      // child: const Icon(Icons.card_giftcard),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.5,
                color: darkBlue,
              ),
              Container(
                alignment: Alignment.topLeft,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${subject["title"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyChapters(subject: subject),
            ),
          );
        },
      ),
    );
  }
}

IconData getIconData(String? iconName) {
  switch (iconName) {
    case 'monument':
      return FontAwesomeIcons.monument;
    case 'globe':
      return FontAwesomeIcons.globe;
    case 'landmark':
      return FontAwesomeIcons.landmark;
    case 'map':
      return FontAwesomeIcons.map;
    case 'Cloud with Sun and Rain':
      return FontAwesomeIcons.cloudSunRain;
    case 'Microscope':
      return FontAwesomeIcons.microscope;
    case 'bookOpen':
      return FontAwesomeIcons.bookOpen;
    case 'handshake':
      return FontAwesomeIcons.handshake;
    case 'puzzle-piece':
      return FontAwesomeIcons.puzzlePiece;
    case 'exchangeAlt':
      return FontAwesomeIcons.rightLeft;
    case 'lightbulb':
      return FontAwesomeIcons.lightbulb;
    case 'calculator':
      return FontAwesomeIcons.calculator;
    // Add more cases as needed for additional icon names
    default:
      return Icons.subject;
  }
}
