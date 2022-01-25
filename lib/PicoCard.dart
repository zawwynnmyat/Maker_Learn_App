import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'maker_learn_theme.dart';

class PicoCard extends StatelessWidget {
  // This widget is the root of your application.

  final title = 'Editor\'s Choice';
  final subtitle = 'Raspberry Pi Pico';
  final description = 'RPi Pico Articles';
  final author_name = 'Hexa Dev';

  @override
  Widget build(BuildContext context) {
        return Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              constraints: BoxConstraints.expand(
                  width: 350,
                  height: 450
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/rpi_pico_main.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12.0),
               ),
              child: Stack(
                children: [
                  Positioned(
                      child: Text(title, style: MakerLearnTheme.darkTextTheme.headline3,)
                  ),
                  Positioned(
                    top: 20,
                      child: Text(subtitle, style: MakerLearnTheme.darkTextTheme.headline2,)
                  ),
                  Positioned(
                    child: Text(description, style: MakerLearnTheme.darkTextTheme.bodyText1),
                    bottom: 15,
                    right: 0,
                  ),
                  Positioned(
                      child: Text(author_name, style: MakerLearnTheme.darkTextTheme.bodyText1,),
                    bottom: 0,
                      right: 0,
                  ),
                ],
              ),
            ),
        );
  }
}