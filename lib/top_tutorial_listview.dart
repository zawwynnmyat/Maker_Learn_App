import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maker_learn/PicoCard.dart';
import 'package:maker_learn/article_post_thumbnil.dart';
import 'package:maker_learn/card2.dart';
import 'maker_learn_theme.dart';
import 'card3.dart';

class TopTutorialListView extends StatelessWidget {
  // This widget is the root of your application.

  TopTutorialListView({Key key}) : super(key: key);

  List<Widget> cards = [
    PicoCard(),
    Card3(),
    Card2()
  ];

  @override
  Widget build(BuildContext context) {
     return Padding(
         padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('Articles of the day 📚', style: Theme.of(context).textTheme.headline2),
           const SizedBox(
             height: 16,
           ),
           Container(
             height: 400,

             color: Colors.transparent,
             child: ListView.separated(
               scrollDirection: Axis.horizontal,
                 itemBuilder: (context, int index){
                      return cards[index];
                 },
                 separatorBuilder: (context, int index) {
                   return const SizedBox(width: 16,);
                 },
                 itemCount: cards.length
             ),
           ),
         ],
       ),
     );
  }
}
