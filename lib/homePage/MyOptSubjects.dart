import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
            crossAxisCount: 2,
          ),
          itemCount: optionalSubjects.isEmpty ? 0 : optionalSubjects.length,
          itemBuilder: (BuildContext context, int index) {
            final subject = optionalSubjects[index].data();
            return HorizontalPlaceItem(subject: subject);
          },
        );
      },
    );

    // return Container(
    //   padding: const EdgeInsets.only(top: 10.0, left: 20.0),
    //   height: 450.0,
    //   width: MediaQuery.of(context).size.width,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     primary: false,
    //     itemCount: subjectMaps.isEmpty ? 0 : subjectMaps.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       Map subject = subjectMaps.reversed.toList()[index];
    //       return HorizontalPlaceItem(subject: subject);
    //     },
    //   ),
    // );
  }
}

class HorizontalPlaceItem extends StatelessWidget {
  final Map subject;

  const HorizontalPlaceItem({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(
        child: SizedBox(
          height: 400.0,
          width: 140.0,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "images/appLogo.png",
                  height: 50.0,
                  width: 70.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 7.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${subject["title"]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 3.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Paper Type: ${subject["paperType"]}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Colors.blueGrey[300],
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class MyOptSubject {
//   final String title;
//   final String paperType;
//   final String image;

//   MyOptSubject({
//     required this.title,
//     required this.paperType,
//     required this.image,
//   });
// }

// List<MyOptSubject> subjects = [
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Agriculture',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Animal Husbandry and Veterinary Science',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Anthropology',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Botany',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Chemistrye',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Civil Engineerin',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Commerce and Accountancy',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Economics',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Electrical Engineering',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Geography',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Geology',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'History',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Law',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Management',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Mathematics',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Mechanical Engineering',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Medical Science',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Philosophy',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Physics',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Political Science and International Relations',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Psychology',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Public Administration',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Sociology',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Statistics',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Zoology',
//   ),
//   MyOptSubject(
//     image: 'images/sampleProfile.png',
//     paperType: 'opt-paper',
//     title: 'Literature',
//   ),
// ];

// List<Map<dynamic, dynamic>> subjectMaps = subjects.map((subject) {
//   return {
//     'title': subject.title,
//     'paperType': subject.paperType,
//     'image': subject.image,
//   };
// }).toList();
