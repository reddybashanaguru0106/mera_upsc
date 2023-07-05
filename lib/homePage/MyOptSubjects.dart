import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mera_upsc/homePage/cf.dart';
import 'optionaldetails.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dart:math' as math;

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

class MyOptSubjects extends StatelessWidget {
  const MyOptSubjects({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('subjects').snapshots(),
      builder: (context, snapshots) {
        final loadedSubjects = snapshots.data!.docs;
        final optionalSubjects = loadedSubjects
            .where((element) => element['subjectType'] == 'optional')
            .toList();
        return GridView.builder(
          scrollDirection: Axis.horizontal,
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemCount: optionalSubjects.isEmpty ? 0 : optionalSubjects.length,
          itemBuilder: (BuildContext context, int index) {
            final subject = optionalSubjects[index].data();
            return HorizontalPlaceItem(subject: subject);
          },
        );
      },
    );
  }
}

class HorizontalPlaceItem extends StatelessWidget {
  final Map subject;

  const HorizontalPlaceItem({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: InkWell(
        child: SizedBox(
          height: 145.0,
          width: 170.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    getIconData(subject['iconName']),
                    color: darkBlue,
                    size: 45.0,
                    semanticLabel: 'Text to announce in accessibility modes',
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
              const SizedBox(height: 7.0),
              Container(
                alignment: Alignment.topLeft,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${subject["title"]}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OptionalDetails(),
            ),
          );
        },
      ),
    );
  }
}

IconData getIconData(String? iconName) {
  switch (iconName) {
    case 'leaf':
      return FontAwesomeIcons.leaf;
    case 'Veterinary Symbol':
      return FontAwesomeIcons.paw;
    case 'globe':
      return FontAwesomeIcons.globe;
    case 'seedling':
      return FontAwesomeIcons.seedling;
    case 'book':
      return FontAwesomeIcons.book;
    case 'calculator':
      return FontAwesomeIcons.calculator;
    case 'flask':
      return FontAwesomeIcons.flask;
    case 'balance-scale':
      return FontAwesomeIcons.dollarSign;
    case 'money-bill':
      return FontAwesomeIcons.moneyBills;
    case 'Map Icon':
      return FontAwesomeIcons.map;
    case 'mountain':
      return FontAwesomeIcons.mountain;
    case 'museum':
      return FontAwesomeIcons.buildingColumns;
    case 'sitemap':
      return FontAwesomeIcons.sitemap;
    // ignore: unreachable_switch_case
    case 'chartline':
      return FontAwesomeIcons.chartLine;
    case 'hospital':
      return FontAwesomeIcons.hospital;
    case 'brain':
      return FontAwesomeIcons.brain;
    case 'landmark':
      return FontAwesomeIcons.landmark;
    case 'microscope':
      return FontAwesomeIcons.microscope;
    case 'flag':
      return FontAwesomeIcons.flag;
    // ignore: unreachable_switch_case
    case 'brain':
      return FontAwesomeIcons.brain;
    case 'clipboard':
      return FontAwesomeIcons.clipboard;
    case 'peoplearrows':
      return FontAwesomeIcons.peopleArrows;
    case 'database':
      return FontAwesomeIcons.database;
    case 'bug':
      return FontAwesomeIcons.bug;
    case 'pen':
      return FontAwesomeIcons.pen;
    case 'Law Book':
      return FontAwesomeIcons.book;
    case ' Gears':
      return FontAwesomeIcons.gears;

    // Add more cases as needed for additional icon names
    default:
      return Icons.subject;
  }
}
