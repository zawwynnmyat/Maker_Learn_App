import 'package:flutter/material.dart';
import 'package:maker_learn/instructor_card.dart';
import 'maker_learn_theme.dart';

class Card2 extends StatelessWidget {

  const Card2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            InstructorCard(
                instructorName: 'Suang Pi',
                title: 'Article Writer',
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Article Writer',
                      style: MakerLearnTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Hobbyist',
                        style: MakerLearnTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
