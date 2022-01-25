import 'package:flutter/material.dart';
import 'package:maker_learn/instructor_card.dart';
import 'maker_learn_theme.dart';

class Card3 extends StatelessWidget {

  const Card3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Center(
          child: Container(
            constraints: const BoxConstraints.expand(
              width: 350,
              height: 450
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/wood.jpg'),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Stack(
              children: [
                Container(
                  constraints: BoxConstraints.expand(
                    height: 450,
                    width: 350,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.book, color: Colors.white, size: 50,),
                      SizedBox(height: 8,),
                      Text('Top Microcontrollers', style: MakerLearnTheme.darkTextTheme.headline2,),
                      const SizedBox(height: 30,),
                      Center(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          spacing: 12.0,
                          children: [
                            Chip(
                              label: Text("Microchip PIC"),
                              backgroundColor: Colors.black.withOpacity(0.6),
                            ),
                            Chip(
                              label: Text("STM32"),
                              backgroundColor: Colors.black.withOpacity(0.6),
                            ),
                            Chip(
                              label: Text("AVR"),
                              backgroundColor: Colors.black.withOpacity(0.6),
                            ),
                            Chip(
                              label: Text("8051"),
                              backgroundColor: Colors.black.withOpacity(0.6),
                            ),
                            Chip(
                              label: Text("Arduino"),
                              backgroundColor: Colors.black.withOpacity(0.6),
                            ),
                            Chip(
                              label: Text("Raspberry Pi"),
                              backgroundColor: Colors.black.withOpacity(0.6),
                            ),

                            Chip(
                              label: Text("Tiva C"),
                              backgroundColor: Colors.black.withOpacity(0.6),
                            ),
                            Chip(
                              label: Text("NXP"),
                              backgroundColor: Colors.black.withOpacity(0.6),
                            ),
                            Chip(
                              label: Text("RP2040"),
                              backgroundColor: Colors.black.withOpacity(0.6),
                            ),
                          ],
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