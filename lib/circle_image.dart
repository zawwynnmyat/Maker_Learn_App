import 'package:flutter/material.dart';
import 'maker_learn_theme.dart';

class CircleImage extends StatelessWidget {
  // This widget is the root of your application.
  CircleImage({Key key, this.imageRadius = 20, this.imageProvider}) : super(key: key);

  final double imageRadius;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        backgroundImage: imageProvider,
        radius: imageRadius - 5,
      ),
    );
  }
}