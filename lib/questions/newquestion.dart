// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:mera_upsc/questions/questionsfinal.dart';

class Newquestions extends StatefulWidget {
  const Newquestions({super.key});

  @override
  State<Newquestions> createState() {
    return _Newquestionstate();
  }
}

class _Newquestionstate extends State<Newquestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add a new item'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Column(
              children: [
                TextFormField(
                  maxLength: 50,
                  decoration: const InputDecoration(
                    label: Text('id'),
                  ),
                  validator: (value) {
                    return 'Demo....';
                  },
                ),
                // Row(
                // children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('subejctId'),
                  ),
                  initialValue: '1',
                ),
                const SizedBox(
                  width: 8,
                ),
                // DropdownButtonFormField(
                //   items: [
                //     for (final Newquestions in questions.entries)
                //       DropdownMenuItem(
                //         value: Newquestions.value,
                //         child: Row(children: [
                //           Container(
                //             width: 16,
                //             height: 16,
                //             color: Newquestions.value.color,
                //           ),
                //           const SizedBox(width: 6),
                //           Text(Newquestions.value.title),
                //         ]),
                //       ),
                //   ],
                //   onChanged: (value) {},
                // )
                // ],
                // )
                TextFormField(
                  maxLength: 50,
                  decoration: const InputDecoration(
                    label: Text('question'),
                  ),
                  initialValue: '1',
                ),
                const SizedBox(
                  width: 8,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('A'),
                  ),
                  initialValue: '1',
                ),
                const SizedBox(
                  width: 8,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('B'),
                  ),
                  initialValue: '1',
                ),
                const SizedBox(
                  width: 8,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('C'),
                  ),
                  initialValue: '1',
                ),
                const SizedBox(
                  width: 8,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('D'),
                  ),
                  initialValue: '1',
                ),
                const SizedBox(
                  width: 8,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('answer'),
                  ),
                  initialValue: '1',
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('submit'),
                    )
                  ],
                )
              ],
            ),
            // ),
          ),
        ));
  }

  // From({required Column child}) {}
}
