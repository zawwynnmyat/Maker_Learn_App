import 'package:flutter/material.dart';
import 'package:maker_learn/explore_screen.dart';
import 'package:maker_learn/models/app_state_manager.dart';
import 'package:maker_learn/models/makerlearn_pages.dart';
import 'package:maker_learn/quiz_category.dart';
import 'models/profile_manager.dart';
import 'tutorial_category_screen.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key key, this.currentTab}) : super(key: key);

  static MaterialPage page(int currentTab) {
    return MaterialPage(
      name: MakerLearnPages.home,
      key: ValueKey(MakerLearnPages.home),
        child: Home(
          currentTab: currentTab,
        )
    );
  }

  final int currentTab;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  List<Widget> pages = [
    ExploreScreen(),
    TutorialCategoryScreen(),
    QuizCategory(title: 'Quiz',)
  ];

  @override
  Widget build(BuildContext context) {

    return Consumer<AppStateManager>(builder: (context, appStateManager, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Maker Learn', style: Theme.of(context).textTheme.headline6,),
          actions: [
            IconButton(
              icon: Icon(Icons.person_pin, color: Colors.purple, size: 32,),
              onPressed: () {
               Provider.of<ProfileManager>(context, listen: false).tapOnProfile(true);
              }
            )
          ],
        ),
        body: IndexedStack(
          index: widget.currentTab, children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.currentTab,
          onTap: (index) {
            Provider.of<AppStateManager>(context, listen: false).goToTab(index);
          },
          selectedItemColor: Colors.purple,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.explore,),
                label: 'Explore'
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Tutorials'
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.question_answer),
                label: 'Quiz'
            ),
          ],
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      );
    });

  }

}
