import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'subjects_detail.dart';

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
        return GridView.builder(
          scrollDirection: Axis.horizontal,
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: loadedSubjects.isEmpty ? 0 : loadedSubjects.length,
          itemBuilder: (BuildContext context, int index) {
            final subject = loadedSubjects[index].data();
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
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(
        child: SizedBox(
          height: 450.0,
          width: 140.0,
          child: Column(
            children: <Widget>[
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "images/appLogo.png",
                    height: 60.0,
                    width: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 7.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${subject["title"]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
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
                    fontSize: 13.0,
                    color: Colors.blueGrey[300],
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
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
