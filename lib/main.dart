import 'dart:io';

import 'package:flutter/material.dart';
import 'package:maker_learn/home.dart';
import 'package:maker_learn/maker_learn_theme.dart';
import 'package:maker_learn/models/profile_manager.dart';
import 'package:maker_learn/navigation/app_router.dart';
import 'package:provider/provider.dart';
import 'models/app_state_manager.dart';

void main() {
  runApp(
    const MakerLearn(),
  );
}

class MakerLearn extends StatefulWidget {
  const MakerLearn({Key key}) : super(key: key);

  @override
  _MakerLearnState createState() => _MakerLearnState();
}

class _MakerLearnState extends State<MakerLearn> {

 final _appStateManager = AppStateManager();
 final _profileManager = ProfileManager();

 AppRouter _appRouter;

  @override
  void initState() {
    _appRouter = AppRouter(
      appStateManager: _appStateManager,
      profileManager: _profileManager
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => _appStateManager,
        ),
        ChangeNotifierProvider(
            create: (context) => _profileManager
        )
      ],
      child:  MaterialApp(
            theme: MakerLearnTheme.light(),
            debugShowCheckedModeBanner: false,
            title: 'Maker Learn',
            // TODO: Replace with Router widget
            home: Router(
              backButtonDispatcher: RootBackButtonDispatcher(),
              routerDelegate: _appRouter,
            ),
          )
    );
  }
}
