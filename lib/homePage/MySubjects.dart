import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mera_upsc/app.dart';
import 'subjects_detail.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          height: 250.0,
          width: 140.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    getIconData(subject['iconName']),
                    color: darkBlue,
                    size: 48.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    alignment: Alignment.topLeft,
                    child: Badge(
                      backgroundColor: Colors.orangeAccent,
                      label: Text("Paper Type: ${subject["paperType"]}"),
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
                height: 100,
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
              builder: (context) => const SubjectsDetail(),
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
    case 'map':
      return FontAwesomeIcons.map;
    case 'Cloud with Sun and Rain':
      return FontAwesomeIcons.cloudSunRain;
    case 'Microscope':
      return FontAwesomeIcons.microscope;
    case 'bookOpen':
      return FontAwesomeIcons.bookOpen;
    // Add more cases as needed for additional icon names
    default:
      return Icons.subject;
  }
}
