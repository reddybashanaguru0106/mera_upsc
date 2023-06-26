import 'package:flutter/material.dart';

class CurrentAffairsScreen extends StatelessWidget {
  const CurrentAffairsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 350,
      // margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
      // padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: currentAffairs.length,
        itemBuilder: (context, index) {
          return Container(
            width: 300,
            margin: const EdgeInsets.all(8),
            child: Card(
              elevation: 5.0,
              shadowColor: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 5, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentAffairs[index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      currentAffairs[index].description,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      currentAffairs[index].date,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CurrentAffair {
  final String title;
  final String description;
  final String date;

  CurrentAffair({
    required this.title,
    required this.description,
    required this.date,
  });
}

List<CurrentAffair> currentAffairs = [
  CurrentAffair(
    title: 'Current Affair 1',
    description: 'Description of current affair 1',
    date: 'June 1, 2023',
  ),
  CurrentAffair(
    title: 'Current Affair 2',
    description: 'Description of current affair 2',
    date: 'June 2, 2023',
  ),
  CurrentAffair(
    title: 'Current Affair 3',
    description: 'Description of current affair 3',
    date: 'June 3, 2023',
  ),
  // Add more current affairs as needed
];
