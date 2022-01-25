import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz.dart';
import 'result.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';

class QuizScreenCA extends StatefulWidget {
  const QuizScreenCA({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _QuizScreenCAState();
  }
}

class _QuizScreenCAState extends State<QuizScreenCA> {
  final _questions = const [
    {
      'questionText': 'The ______ format is usually used to store data.',
      'answers': [
        {'text': 'BCD', 'score': 5},
        {'text': 'Decimal', 'score': 0},
        {'text': 'Hexadecimal', 'score': 0},
        {'text': 'Octal', 'score': 0},
      ],
    },
    {
      'questionText': 'The 8-bit encoding format used to store data in a computer is ______',
      'answers': [
        {'text': 'ASCII', 'score': 0},
        {'text': 'EBCDIC', 'score': 5},
        {'text': 'ANCI', 'score': 0},
        {
          'text': 'USCII',
          'score': 0
        },
      ],
    },
    {
      'questionText': 'A source program is usually in _______',
      'answers': [
        {'text': 'Assembly language', 'score': 0},
        {'text': 'Machine level language', 'score': 0},
        {'text': 'High-level language', 'score': 5},
        {'text': 'Natural language', 'score': 0},
      ],
    },
    {
      'questionText': 'Which memory device is generally made of semiconductors?',
      'answers': [
        {'text': 'RAM', 'score': 5},
        {'text': 'Hard-disk', 'score': 0},
        {'text': 'Floppy disk', 'score': 0},
        {'text': 'CD Disk', 'score': 0},
      ],
    },
    {
      'questionText':
      'The small extremely fast, RAM’s are called as _______',
      'answers': [
        {'text': 'Cache', 'score': 5},
        {'text': 'Heaps', 'score': 0},
        {'text': 'Accumulators', 'score': 0},
        {'text': 'Stacks', 'score': 0},
      ],
    },
    {
      //Q6
      'questionText':
      'The ALU makes use of _______ to store the intermediate results.',
      'answers': [
        {'text': 'Accumulators', 'score': 5},
        {'text': 'Registers', 'score': 0},
        {'text': 'Heap', 'score': 0},
        {'text': 'Stack', 'score': 0},
      ],
    },
    {
      //Q7
      'questionText':
      'The control unit controls other units by generating ___________',
      'answers': [
        {'text': 'Control Signals', 'score': 0},
        {'text': 'Timing Signals', 'score': 5},
        {'text': 'Transfer Signals', 'score': 0},
        {'text': 'Command Signals', 'score': 0},
      ],
    },
    {
      //Q8
      'questionText':
      '______ are numbers and encoded characters, generally used as operands.',
      'answers': [
        {'text': 'Input', 'score': 0},
        {'text': 'Data', 'score': 5},
        {'text': 'Information', 'score': 0},
        {'text': 'Stored Values', 'score': 0},
      ],
    },
    {
      //Q9
      'questionText':
      'The Input devices can send information to the processor.',
      'answers': [
        {'text': 'When the SIN status flag is set', 'score': 5},
        {'text': 'When the data arrives regardless of the SIN flag', 'score': 0},
        {'text': 'Neither of the cases', 'score': 0},
        {'text': 'Either of the cases', 'score': 0},
      ],
    },
    {
      //Q10
      'questionText':
      '______ bus structure is usually used to connect I/O devices.',
      'answers': [
        {'text': 'Single bus', 'score': 5},
        {'text': 'Multiple bus', 'score': 0},
        {'text': 'Star bus', 'score': 0},
        {'text': 'Rambus', 'score': 0},
      ],
    },
    {
      //Q11
      'questionText':
      'The I/O interface required to connect the I/O device to the bus consists of ______',
      'answers': [
        {'text': 'Address decoder and registers', 'score': 0},
        {'text': 'Control circuits', 'score': 0},
        {'text': 'Address decoder, registers and Control circuits', 'score': 5},
        {'text': 'Only Control circuits', 'score': 0},
      ],
    },
    {
      //Q12
      'questionText':
      'To reduce the memory access time we generally make use of ______',
      'answers': [
        {'text': 'Heaps', 'score': 0},
        {'text': 'Higher capacity RAM’s', 'score': 0},
        {'text': 'SDRAM’s', 'score': 0},
        {'text': 'Cache’s', 'score': 5},
      ],
    },
    {
      //Q13
      'questionText':
      '______ is generally used to increase the apparent size of physical memory.',
      'answers': [
        {'text': 'Secondary memory', 'score': 0},
        {'text': 'Virtual memory', 'score': 5},
        {'text': 'Hard-disk', 'score': 0},
        {'text': 'Disks', 'score': 0},
      ],
    },
    {
      //Q14
      'questionText':
      'MFC stands for ___________',
      'answers': [
        {'text': 'Memory Format Caches', 'score': 0},
        {'text': 'Memory Function Complete', 'score': 5},
        {'text': 'Memory Find Command', 'score': 0},
        {'text': 'Mass Format Command', 'score': 0},
      ],
    },
    {
      //Q15
      'questionText':
      'The time delay between two successive initiations of memory operation _______',
      'answers': [
        {'text': 'Memory access time', 'score': 0},
        {'text': 'Memory search time', 'score': 0},
        {'text': 'Memory cycle time', 'score': 5},
        {'text': 'Instruction delay', 'score': 0},
      ],
    },
    {
      //Q16
      'questionText':
      'The decoded instruction is stored in ______',
      'answers': [
        {'text': 'IR', 'score': 5},
        {'text': 'PC', 'score': 0},
        {'text': 'Registers', 'score': 0},
        {'text': 'MDR', 'score': 0},
      ],
    },
    {
      //Q17
      'questionText':
      'Which registers can interact with the secondary storage?',
      'answers': [
        {'text': 'MAR', 'score': 5},
        {'text': 'PC', 'score': 0},
        {'text': 'IR', 'score': 0},
        {'text': 'R0', 'score': 0},
      ],
    },
    {
      //Q18
      'questionText':
      'During the execution of a program which gets initialized first?',
      'answers': [
        {'text': 'MDR', 'score': 0},
        {'text': 'IR', 'score': 0},
        {'text': 'PC', 'score': 5},
        {'text': 'MAR', 'score': 0},
      ],
    },
    {
      //Q19
      'questionText':
      'ISP stands for _________',
      'answers': [
        {'text': 'Instruction Set Processor', 'score': 5},
        {'text': 'Information Standard Processing', 'score': 0},
        {'text': 'Interchange Standard Protocol', 'score': 0},
        {'text': 'Interrupt Service Procedure', 'score': 0},
      ],
    },
    {
      //Q20
      'questionText':
      'The internal components of the processor are connected by _______',
      'answers': [
        {'text': 'Processor intra-connectivity circuitry', 'score': 0},
        {'text': 'Processor bus', 'score': 5},
        {'text': 'Memory bus', 'score': 0},
        {'text': 'Rambus', 'score': 0},
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
