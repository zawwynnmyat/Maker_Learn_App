import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz.dart';
import 'result.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  final _questions = const [
    {
      'questionText': 'What does p refer to in ATmega328p?',
      'answers': [
        {'text': 'Production', 'score': 0},
        {'text': 'Pico-Power', 'score': 5},
        {'text': 'Power-Pico', 'score': 0},
        {'text': 'Programmable on chip', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the default bootloader of the Arduino Uno?',
      'answers': [
        {'text': 'Optiboot bootloader', 'score': 5},
        {'text': 'AIR-boot', 'score': 0},
        {'text': 'Bare box', 'score': 0},
        {
          'text': 'GAG',
          'score': 0
        },
      ],
    },
    {
      'questionText': 'What is the microcontroller used in Arduino Uno?',
      'answers': [
        {'text': 'ATmega328p', 'score': 5},
        {'text': 'ATmega2560', 'score': 0},
        {'text': 'ATmega32114', 'score': 0},
        {'text': 'AT91SAM3x8E', 'score': 0},
      ],
    },
    {
      'questionText': 'Which board is first to use microcontroller within build USB?',
      'answers': [
        {'text': 'LilyPad', 'score': 0},
        {'text': 'Uno', 'score': 0},
        {'text': 'RedBoard', 'score': 0},
        {'text': 'Leonardo', 'score': 5},
      ],
    },
    {
      'questionText':
      'Which is the software or a programming language used for controlling of Arduino',
      'answers': [
        {'text': 'Assembly Language', 'score': 0},
        {'text': 'C Language', 'score': 0},
        {'text': 'Java', 'score': 0},
        {'text': 'Any Language', 'score': 5},
      ],
    },
    {
      //Q6
      'questionText':
      '________ are pre built circuit boards that fit on the top of Arduino.',
      'answers': [
        {'text': 'Sensor', 'score': 0},
        {'text': 'Data Types', 'score': 0},
        {'text': 'Breadboard', 'score': 0},
        {'text': 'Shields', 'score': 5},
      ],
    },
    {
      //Q7
      'questionText':
      'Which function is called once when the program starts:',
      'answers': [
        {'text': 'loop()', 'score': 0},
        {'text': 'setup()', 'score': 5},
        {'text': '(output)', 'score': 0},
        {'text': '(input)', 'score': 0},
      ],
    },
    {
      //Q8
      'questionText':
      'Arduino IDE consists of 2 functions. What are they?',
      'answers': [
        {'text': 'Build() and loop()', 'score': 0},
        {'text': 'Setup() and build()', 'score': 0},
        {'text': 'Setup() and loop()', 'score': 5},
        {'text': 'Loop() and build() and setup()', 'score': 0},
      ],
    },
    {
      //Q9
      'questionText':
      'What does GPIO stand for?',
      'answers': [
        {'text': 'General Purpose Inner Outer Propeller', 'score': 0},
        {'text': 'General Purpose Input Output Pins', 'score': 5},
        {'text': 'General Purpose Interested Old People', 'score': 0},
        {'text': 'General Purpose Input Output Processor', 'score': 0},
      ],
    },
    {
      //Q10
      'questionText':
      'A program written with the IDE for Arduino is called',
      'answers': [
        {'text': 'IDE source', 'score': 0},
        {'text': 'Sketch', 'score': 5},
        {'text': 'Cryptography', 'score': 0},
        {'text': 'Source code', 'score': 0},
      ],
    },
    {
      //Q11
      'questionText':
      'What does IDE stannd for',
      'answers': [
        {'text': 'In Deep Environment', 'score': 0},
        {'text': 'Integrated Development Environment', 'score': 5},
        {'text': 'Internal Deep Escape', 'score': 0},
        {'text': 'IDE', 'score': 0},
      ],
    },
    {
      //Q12
      'questionText':
      'What license is Arduino distributed under?',
      'answers': [
        {'text': 'Proprietary with GNU GPL Ambient user interface', 'score': 0},
        {'text': 'Proprietary', 'score': 5},
        {'text': 'Shareware', 'score': 0},
        {'text': 'LGPL or GPL License', 'score': 0},
      ],
    },
    {
      //Q13
      'questionText':
      'Arduino shields are also called as ',
      'answers': [
        {'text': 'Extra peripherals', 'score': 0},
        {'text': 'Add on modules', 'score': 5},
        {'text': 'Connectivity modules', 'score': 0},
        {'text': 'Another Arduinos', 'score': 0},
      ],
    },
    {
      //Q14
      'questionText':
      'How many analog pins are used in Arduino Mega board?',
      'answers': [
        {'text': '16', 'score': 5},
        {'text': '14', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '9', 'score': 0},
      ],
    },
    {
      //Q15
      'questionText':
      'How many digital pins are there on the UNO board?',
      'answers': [
        {'text': '14', 'score': 5},
        {'text': '12', 'score': 0},
        {'text': '16', 'score': 0},
        {'text': '20', 'score': 0},
      ],
    },
    {
      //Q16
      'questionText':
      'In the Arduino, ____ is the symbol used to calculate modulo.',
      'answers': [
        {'text': '#', 'score': 0},
        {'text': '!', 'score': 0},
        {'text': '%', 'score': 5},
        {'text': '\$', 'score': 0},
      ],
    },
    {
      //Q17
      'questionText':
      'Which of the following variable types is NOT recognized by the Arduino?',
      'answers': [
        {'text': 'float', 'score': 0},
        {'text': 'int', 'score': 0},
        {'text': 'long', 'score': 0},
        {'text': 'All of these are recognized', 'score': 5},
      ],
    },
    {
      //Q18
      'questionText':
      'How many types of arduinos do we have?',
      'answers': [
        {'text': '5', 'score': 0},
        {'text': '8', 'score': 5},
        {'text': '6', 'score': 0},
        {'text': '9', 'score': 0},
      ],
    },
    {
      //Q19
      'questionText':
      'The sum of 11101 + 10111 equals _______',
      'answers': [
        {'text': '110011', 'score': 0},
        {'text': '110100', 'score': 5},
        {'text': '100001', 'score': 0},
        {'text': '100100', 'score': 0},
      ],
    },
    {
      //Q20
      'questionText':
      'Currently, owner of AVR chips is ',
      'answers': [
        {'text': 'Atmel', 'score': 0},
        {'text': 'Microchip', 'score': 5},
        {'text': 'STMicroelectronics', 'score': 0},
        {'text': 'NXP', 'score': 0},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      //print('We have more questions!');
    } else {
     // print('No more questions!');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title, style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.purple,
        ),

        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              buildQuestionProgress(),
              _questionIndex < _questions.length
                  ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ) //Quiz
                  : Result(_totalScore, _resetQuiz),
            ],
          ),
        ), //Padding
      );
  }

  Widget buildQuestionProgress() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Question ${_questionIndex} / 20 Completed', style: GoogleFonts.lato(fontSize: 20),),
          SizedBox(height: 10,),
          RoundedProgressBar(
            percent: ((_questionIndex) * 5).toDouble(),
            height: 20,
            theme: RoundedProgressBarTheme.purple,
            borderRadius: BorderRadius.circular(24),
          )
        ],
      ),
    );
  }

}
