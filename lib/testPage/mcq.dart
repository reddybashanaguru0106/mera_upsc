import 'package:flutter/material.dart';

class MyQuestions extends StatefulWidget {
  const MyQuestions({Key? key}) : super(key: key);

  @override
  _MyQuestionsState createState() => _MyQuestionsState();
}

class _MyQuestionsState extends State<MyQuestions> {
  int? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          AppBar(
            title: const Text('TEST-1          time:00:00'),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final question = questions[index];
                return Container(
                  width: 300,
                  height: 280,
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
                            question.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(),
                          RadioListTile<int>(
                            title: Text(question.option1),
                            value: 1,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          RadioListTile<int>(
                            title: Text(question.option2),
                            value: 2,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          RadioListTile<int>(
                            title: Text(question.option3),
                            value: 3,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                          RadioListTile<int>(
                            title: Text(question.option4),
                            value: 4,
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setState(() {
                                selectedOption = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyQuestion {
  final String title;
  final String option1;
  final String option2;
  final String option3;
  final String option4;

  MyQuestion({
    required this.title,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
  });
}

List<MyQuestion> questions = [
  MyQuestion(
    title:
        '1.Who among the following was the founder of the Indian National Congress?',
    option1: 'a) Mahatma Gandhi',
    option2: 'b) Jawaharlal Nehru',
    option3: 'c) A.O. Hume',
    option4: 'd) Bal Gangadhar Tilak',
  ),
  MyQuestion(
    title: '2.The Quit India Movement was launched in which year?',
    option1: 'a) 1919',
    option2: 'b) 1922',
    option3: 'c) 1930',
    option4: 'd) 1942',
  ),
  MyQuestion(
    title:
        '3.which of the following ministary has launched,catch the rain 2023 campaign?',
    option1: 'a)ministary of jal shakti',
    option2: 'b)ministary of rural development',
    option3: 'c)ministary of panchayathi raj',
    option4: 'd)ministary of carporator affiars',
  ),
  MyQuestion(
    title:
        '4.Wellington Reef sometimes seen in the news recently,is located in?',
    option1: 'a)Papua New Guinea',
    option2: 'b)Ecuador',
    option3: 'c)Australia',
    option4: 'd)New Nealand',
  ),
  MyQuestion(
    title:
        '5.Which of the following planets of the solar system has the longest dat',
    option1: 'a)Mercury',
    option2: 'b)Jupiter',
    option3: 'c)Venus',
    option4: 'd)Earth',
  ),
];
