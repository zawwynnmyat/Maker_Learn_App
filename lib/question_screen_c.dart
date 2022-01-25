import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz.dart';
import 'result.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';

class QuizScreenC extends StatefulWidget {
  const QuizScreenC({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _QuizScreenCState();
  }
}

class _QuizScreenCState extends State<QuizScreenC> {
  final _questions = const [
    {
      'questionText': 'Identify the incorrect file opening mode from the following.',
      'answers': [
        {'text': 'r', 'score': 0},
        {'text': 'w', 'score': 0},
        {'text': 'x', 'score': 5},
        {'text': 'a', 'score': 0},
      ],
    },
    {
      'questionText': 'Choose the correct statement that can retrieve the remainder of the division 5.5 by 1.3?',
      'answers': [
        {'text': 'rem = modf(5.5 % 1.3)', 'score': 0},
        {'text': 'rem = modf(5.5, 1.3)', 'score': 0},
        {'text': 'rem = fmod(5.5, 1.3)', 'score':  5},
        {
          'text': 'rem = f(5.5, 1.3)',
          'score': 0
        },
      ],
    },
    {
      'questionText': 'What function can be used to free the memory allocated by calloc()?',
      'answers': [
        {'text': 'dealloc();', 'score': 0},
        {'text': 'strcat();', 'score': 0},
        {'text': 'free();', 'score': 5},
        {'text': 'memcpy();', 'score': 0},
      ],
    },
    {
      'questionText': 'Which of the following is a logical AND operator?',
      'answers': [
        {'text': '!', 'score': 0},
        {'text': '&&', 'score': 5},
        {'text': '||', 'score': 0},
        {'text': '&', 'score': 0},
      ],
    },
    {
      'questionText':
      'According to ANSI specification, how to declare main () function with command-line arguments?',
      'answers': [
        {'text': 'int main(int argc, char *argv[])', 'score': 5},
        {'text': 'int char main(int argc, *argv)', 'score': 0},
        {'text': 'int main() { int char (*argv argc); }', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    {
      //Q6
      'questionText':
      'Short int means ',
      'answers': [
        {'text': 'Qualifier', 'score': 0},
        {'text': 'Short is the qualifier and int is the basic data type', 'score': 5},
        {'text': 'data type', 'score': 0},
        {'text': 'All of the above', 'score': 0},
      ],
    },
    {
      //Q7
      'questionText':
      'Who invented C- langauge?',
      'answers': [
        {'text': 'James Gausling', 'score': 0},
        {'text': 'Guido Van Rossum', 'score': 0},
        {'text': 'Dennis Ritchie', 'score': 5},
        {'text': 'Bjarne Stroustrup', 'score': 0},
      ],
    },
    {
      //Q8
      'questionText':
      'User-defined data type',
      'answers': [
        {'text': 'typedef enum {Mon, Tue, Wed, Thu, Fri} Workdays;', 'score': 0},
        {'text': 'struct {char name[10], int age};', 'score': 0},
        {'text': 'typedef int Boolean;', 'score': 0},
        {'text': 'All of the above', 'score': 5},
      ],
    },
    {
      //Q9
      'questionText':
      'Find out the correct order',
      'answers': [
        {'text': 'char < int < double', 'score': 5},
        {'text': 'int > char > float', 'score': 0},
        {'text': 'char > int > float', 'score': 0},
        {'text': 'double > char > int', 'score': 0},
      ],
    },
    {
      //Q10
      'questionText':
      'Which of the data types has the size that is variable?',
      'answers': [
        {'text': 'struct', 'score': 5},
        {'text': 'int', 'score': 0},
        {'text': 'float', 'score': 0},
        {'text': 'double', 'score': 0},
      ],
    },
    {
      //Q11
      'questionText':
      'Maximum value of unsigned interger when interger needs two bye of storage',
      'answers': [
        {'text': '2^16', 'score': 0},
        {'text': '2^16-1', 'score': 5},
        {'text': '2^15-1', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    {
      //Q12
      'questionText':
      'Which of the following is not a data types',
      'answers': [
        {'text': 'float', 'score': 0},
        {'text': 'int', 'score': 0},
        {'text': 'real', 'score': 5},
        {'text': 'imaginery', 'score': 0},
      ],
    },
    {
      //Q13
      'questionText':
      'enum types are processed by ',
      'answers': [
        {'text': 'Assembler', 'score': 0},
        {'text': 'Compiler', 'score': 5},
        {'text': 'Linker', 'score': 0},
        {'text': 'Pre-processor', 'score': 0},
      ],
    },
    {
      //Q14
      'questionText':
      'Tick the statement which is not supported by C.',
      'answers': [
        {'text': 'Char str;', 'score': 0},
        {'text': 'char *str;', 'score': 0},
        {'text': 'String str;', 'score': 5},
        {'text': 'float I;', 'score': 0},
      ],
    },
    {
      //Q15
      'questionText':
      'Pick up the false statement',
      'answers': [
        {'text': 'A variable must be declared and defined at the same time', 'score': 5},
        {'text': 'A single variable cannot be defined with two different types in the same scope', 'score': 0},
        {'text': 'A variable defined once can be defined again with different scope', 'score': 0},
        {'text': 'All of the above', 'score': 0},
      ],
    },
    {
      //Q16
      'questionText':
      'Number of keywords in C',
      'answers': [
        {'text': '35 Only', 'score': 0},
        {'text': '36 Only', 'score': 0},
        {'text': '34 Only', 'score': 0},
        {'text': '32 Only', 'score': 5},
      ],
    },
    {
      //Q17
      'questionText':
      'C variable cannot start with a',
      'answers': [
        {'text': 'number', 'score': 0},
        {'text': 'Both A and C', 'score': 5},
        {'text': 'Any special symbol except underscore', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    {
      //Q18
      'questionText':
      'Which Keyword is used to prevent any changes in the value of the variable',
      'answers': [
        {'text': 'Static', 'score': 0},
        {'text': 'float', 'score': 0},
        {'text': 'const', 'score': 5},
        {'text': 'def', 'score': 0},
      ],
    },
    {
      //Q19
      'questionText':
      'Tick the type of linkages',
      'answers': [
        {'text': 'External', 'score': 0},
        {'text': 'External and none', 'score': 0},
        {'text': 'Internal', 'score': 0},
        {'text': 'External, Internal and None', 'score': 5},
      ],
    },
    {
      //Q20
      'questionText':
      'Which of the following symbol is used in variable name ',
      'answers': [
        {'text': '&', 'score': 0},
        {'text': '_', 'score': 5},
        {'text': '#', 'score': 0},
        {'text': '@', 'score': 0},
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
        backgroundColor: Colors.purple,
        title: Text(widget.title),
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
