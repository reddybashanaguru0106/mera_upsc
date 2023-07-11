import 'package:flutter/material.dart';

class MyQuestions extends StatefulWidget {
  const MyQuestions({super.key});

  @override
  State<MyQuestions> createState() => _MyQuestionsState();
}

class _MyQuestionsState extends State<MyQuestions> {
  int? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TEST-1'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final question = questions[index];
                return Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    margin: const EdgeInsets.all(8),
                    child: Expanded(
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
                              const SizedBox(height: 8),
                              RadioListTile<int>(
                                title: Text(question.option1),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(16, 0, 8, 0),
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
                                contentPadding:
                                    const EdgeInsets.fromLTRB(16, 0, 8, 0),
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
                                contentPadding:
                                    const EdgeInsets.fromLTRB(16, 0, 8, 0),
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
                                contentPadding:
                                    const EdgeInsets.fromLTRB(16, 0, 8, 0),
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
                    ));
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ],
        ),
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
        '1. Who among the following was the founder of the Indian National Congress?',
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
    title: '3.Who is known as the "Father of the Indian Constitution"?',
    option1: 'a) Jawaharlal Nehru',
    option2: 'b) B.R. Ambedkar',
    option3: 'c) Rajendra Prasad',
    option4: 'd) Sardar Vallabhbhai Patel',
  ),
  MyQuestion(
    title:
        '4.The Indus Valley Civilization was primarily spread across which modern-day countries?',
    option1: 'a) India and Pakistan',
    option2: 'b) India and Bangladesh',
    option3: 'c) India and Nepal',
    option4: 'd) India and Sri Lanka',
  ),
  MyQuestion(
    title: '5.The Maurya Empire was established by which emperor?',
    option1: 'a) Chandragupta Maurya',
    option2: 'b) Ashoka the Great',
    option3: 'c) Bindusara',
    option4: 'd) Samudragupta',
  ),
  MyQuestion(
    title: '6.The Battle of Plassey took place in which year?',
    option1: 'a) 1757',
    option2: 'b) 1857',
    option3: 'c) 1761',
    option4: 'd) 1856',
  ),
  MyQuestion(
    title:
        '7.Who was the leader of the revolt of 1857, also known as the First War of Independence?',
    option1: 'a) Rani Lakshmibai',
    option2: 'b) Bahadur Shah Zafar',
    option3: 'c) Mangal Pandey',
    option4: 'd) Tatya Tope',
  ),
  MyQuestion(
    title:
        '8.Who was the first woman President of the Indian National Congress?',
    option1: 'a) Annie Besant',
    option2: 'b) Sarojini Naidu',
    option3: 'c) Vijaya Lakshmi Pandit',
    option4: 'd) Indira Gandhi',
  ),
  MyQuestion(
    title: '9.The Swadeshi movement was launched in response to which event?',
    option1: 'a) Jallianwala Bagh massacre',
    option2: 'b) Partition of Bengal',
    option3: 'c) Non-Cooperation Movement',
    option4: 'd) Salt March',
  ),
  MyQuestion(
    title:
        '10.Who was the first Indian woman to become the Prime Minister of India?',
    option1: 'a) Sarojini Naidu',
    option2: 'b) Indira Gandhi',
    option3: 'c) Pratibha Patil',
    option4: 'd) Sonia Gandhi',
  ),
];
