import 'package:flutter/material.dart';
import 'package:maker_learn/tutorial_grid_view.dart';
import 'mock_service.dart';

class TutorialCategoryScreen extends StatelessWidget {
  // This widget is the root of your application
  TutorialCategoryScreen({Key key}) : super(key: key);

  final exploreService = MockService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: exploreService.getCategories(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {
            return TutorialGridView(
              tutorials: snapshot.data,
            );
          } else {

            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
    );
  }
}