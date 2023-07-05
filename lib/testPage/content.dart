import 'package:flutter/material.dart';
// import 'package:mera_upsc/homePage/content.dart';
import 'testdetails.dart';

class MyTestPage extends StatelessWidget {
  const MyTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: myTests.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyTestDetails(),
                  ),
                );
              },
              child: Container(
                width: 450,
                height: 140,
                margin: const EdgeInsets.all(8),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 100,
                            width: 60,
                            child: Image.asset(myTests[index].image)),
                        SizedBox(
                          width: 150,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  myTests[index].title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  myTests[index].description,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  myTests[index].date,
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                )
                              ]),
                        ),
                        const SizedBox(
                          height: 140,
                          width: 100,
                          child: Icon(Icons.navigate_next_sharp),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class TestPage {
  final String title;
  final String description;
  final String date;
  final String image;
  final String testIcon;

  TestPage({
    required this.title,
    required this.description,
    required this.date,
    required this.image,
    required this.testIcon,
  });
}

List<TestPage> myTests = [
  TestPage(
      title: 'Indian History',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'indian National Movemen',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'Indian Geography ',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'Indian Polity and Governance',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: ' Social Development',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'General issues on Environmental ecology, ',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'General Science',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'Comprehension',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'Interpersonal skills including communication skills',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'Logical reasoning and analytical ability',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'Decision making and problem solving',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'General mental ability',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
  TestPage(
      title: 'Basic numeracy',
      description: 'No.of tests Avaialble=20',
      date: 'Test Attempted=2/20',
      image: 'images/appLogo.png',
      testIcon: 'navigate_next_sharp'),
];
