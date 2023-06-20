import 'package:flutter/material.dart';
import 'subjects.dart';
import 'optSubjects.dart';

class MyDashboardBody extends StatelessWidget {
  const MyDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        height: 750,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 400,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 247, 227, 227),
                        border: Border.all(color: Colors.white70)),
                    // child: Image.asset(
                    //   '././images/sampleProfile.png',
                    //   scale: 100,
                    // ),
                  ),
                  Container(
                    width: 400,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 247, 227, 227),
                        border: Border.all(color: Colors.white70)),
                    // child: Image.asset('././images/sampleProfile.png'),
                    // color: Colors.blue,
                  ),
                  Container(
                    width: 400,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 247, 227, 227),
                        border: Border.all(color: Colors.white70)),
                    // color: Colors.green,
                    // child: Image.asset('././images/sampleProfile.png'),
                  ),
                  Container(
                    width: 400,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 247, 227, 227),
                        border: Border.all(color: Colors.white70)),
                    // color: Colors.yellow,
                    // child: Image.asset('././images/sampleProfile.png'),
                  ),
                  Container(
                    width: 400,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 247, 227, 227),
                        border: Border.all(color: Colors.white70)),
                    // color: Colors.orange,
                    // child: Image.asset('././images/sampleProfile.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              //  child: MyMainSubjects(),
              height: 400,
              child: MyMainSubjects(),
            ),
            const SizedBox(
              //  child: MyMainSubjects(),
              height: 200,
              child: MyOptionalSubjects(),
            ),
          ],
        ));
  }
}
