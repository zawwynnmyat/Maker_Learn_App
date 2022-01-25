import 'package:flutter/material.dart';
import 'package:maker_learn/question_screen_c.dart';
import 'package:maker_learn/question_screen_ca.dart';
import 'package:maker_learn/question_screen_pic.dart';
import 'package:maker_learn/quiz_screen.dart';

class QuizCategory extends StatefulWidget {
  const QuizCategory({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _QuizCategoryState createState() => _QuizCategoryState();
}

class _QuizCategoryState extends State<QuizCategory> {

  int _selectedIndex = 0;
 List<String> imageUrl = [
   'assets/quiz_card/arduino_quiz.png',
   'assets/quiz_card/pic_quiz.png',
   'assets/quiz_card/c_quiz.png',
   'assets/quiz_card/ca_quiz.png',
 ];

 List<String> selectedTitle = [
   'Arduino Quiz',
   'Microchip PIC',
   'C Language',
   'Computer Architecture'
 ];

  @override
  Widget build(BuildContext context) {
      return Container(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
         Expanded(
            child: ListView.builder(
          padding: EdgeInsets.all(16.0),
           itemCount: imageUrl.length,
           itemBuilder: (context, int index) {
             return GestureDetector(
               child: Column(
                 children: [
                   Image(
                     width: 350,
                     height: 250,
                     image: AssetImage(imageUrl[index]),
                   ),
                   SizedBox(height: 30.0,)
                 ],
               ),
               onTap: (){
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context){
                       if(selectedTitle[index] == 'Arduino Quiz') {
                         return QuizScreen(
                           title: selectedTitle[index],
                         );
                       } else if (selectedTitle[index] == 'Microchip PIC'){
                         return QuizScreenPIC(
                           title: selectedTitle[index],
                         );
                       } else if (selectedTitle[index] == 'C Language') {
                         return QuizScreenC(
                           title: selectedTitle[index],
                         );
                       } else {
                         return QuizScreenCA(
                           title: selectedTitle[index],
                         );
                       }
                     }));
               },
             );
           },
         ),
          )
           ],
         ),
      );

  }
}