import 'package:flutter/material.dart';

class MyDashboardBody extends StatelessWidget {
  const MyDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50.0),
      height: 150,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 400,
            // child: Image.asset(
            //   '././images/sampleProfile.png',
            //   scale: 100,
            // ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightBlueAccent,
              border: Border.all(
                color: const Color.fromARGB(179, 7, 0, 4),
                width: 5,
              ),
            ),

            child: const Center(
              child: Text(
                  "The UPSC exams are tough tests to get important government jobs in India. There are three stages: Prelims, Mains, and Interview. ",
                  style: TextStyle(fontSize: 15)),
            ),
          ),
          Container(
            width: 400,
            // child: Image.asset('././images/sampleProfile.png'),
            // color: Colors.blue, //
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightGreenAccent,
              border: Border.all(
                color: const Color.fromARGB(179, 5, 0, 0),
                width: 5,
              ),
            ),
            child: const Center(
                child: Text(
              'The exams cover many subjects like history, geography, and current affairs.',
              style: TextStyle(fontSize: 15),
            )),
          ),
          Container(
            width: 400,
            // color: Colors.green,
            // child: Image.asset('././images/sampleProfile.png'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightBlueAccent,
              border: Border.all(
                color: const Color.fromARGB(179, 0, 0, 0),
                width: 5,
              ),
            ),
            child: const Center(
              child: Text(
                'People work hard to prepare for them. Clearing the exams opens up great career opportunities in the government.',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Container(
            width: 400,
            // color: Colors.yellow,
            // child: Image.asset('././images/sampleProfile.png'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightGreenAccent,
              border: Border.all(
                color: const Color.fromARGB(179, 0, 0, 0),
                width: 5,
              ),
            ),
            child: const Center(
              child: Text(
                ' People spend a lot of time preparing for them. If you pass, you can have a good career in the government.',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Container(
            width: 400,
            // color: Colors.orange,
            // child: Image.asset('././images/sampleProfile.png'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightBlueAccent,
              border: Border.all(
                color: const Color.fromARGB(179, 4, 0, 0),
                width: 5,
              ),
            ),
            child: const Center(
              child: Text(
                'UPSC exams are challenging tests for government jobs in India. They have three stages: Prelims, Mains, and Interview. ',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
