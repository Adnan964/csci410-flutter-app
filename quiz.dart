
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, Object>> questions = [
    {
      'question': 'How often should you water a cactus?',
      'options': ['Once a week', 'Once every two weeks', 'Daily'],
      'answer': 'Once every two weeks',
    },
    {
      'question': 'What kind of light does an orchid need?',
      'options': [
        'Direct sunlight',
        'Bright, indirect sunlight',
        'No light at all'
      ],
      'answer': 'Bright, indirect sunlight',
    },
    {
      'question': 'What’s a common sign of overwatering?',
      'options': ['Yellowing leaves', 'Wilting', 'Brown leaf tips'],
      'answer': 'Yellowing leaves',
    },
  ];

  int currentQuestion = 0;
  int score = 0;

  void checkAnswer(String selectedOption) {
    if (selectedOption == questions[currentQuestion]['answer']) {
      setState(() {
        score++;
      });
    }
    setState(() {
      currentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Plant Care Quiz')),
      body: currentQuestion < questions.length
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    questions[currentQuestion]['question'] as String,
                    style: TextStyle(fontSize: 20),
                  ),
                  ...(questions[currentQuestion]['options'] as List<String>)
                      .map((option) {
                    return ElevatedButton(
                      onPressed: () => checkAnswer(option),
                      child: Text(option),
                    );
                  }).toList(),
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Quiz Completed!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('Your Score: $score/${questions.length}'),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentQuestion = 0;
                        score = 0;
                      });
                    },
                    child: Text('Restart Quiz'),
                  ),
                ],
              ),
            ),
    );
  }
}
