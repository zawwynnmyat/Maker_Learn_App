import 'package:flutter/material.dart';
import 'package:maker_learn/home.dart';
import 'package:maker_learn/models/app_state_manager.dart';
import 'package:maker_learn/models/makerlearn_pages.dart';
import 'package:maker_learn/models/profile_manager.dart';
import 'package:maker_learn/screens_initial/screens.dart';
import 'package:maker_learn/screens_initial/webview_screen.dart';

class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final AppStateManager appStateManager;
  final ProfileManager profileManager;

  AppRouter({this.appStateManager, this.profileManager})
      : navigatorKey = GlobalKey<NavigatorState>() {
    appStateManager.addListener(() {
      notifyListeners();
    });
    profileManager.addListener(() {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    appStateManager.removeListener(() {
       notifyListeners();
    });
    profileManager.removeListener(() {
      notifyListeners();
    });

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
     return Navigator(
       onPopPage: _handlePopPages,
        key: navigatorKey,
        pages: [
          if(!appStateManager.isInitialized) SplashScreen.page(),
          if(appStateManager.isInitialized && !appStateManager.isOnboardingComplete) OnboardingScreen.page(),
          if(appStateManager.isOnboardingComplete) Home.page(appStateManager.getSelectedTab),
          if(profileManager.didSelectUser) ProfileScreen.page(profileManager.getUser),
          if(profileManager.didTapOnHexaDev) WebViewScreen.page()
        ],
     );
  }

  bool _handlePopPages(Route<dynamic> route, result) {

    if(!route.didPop(result)) {
      return false;
    }

    if(route.settings.name == MakerLearnPages.onboardingPath) {
       appStateManager.logout();
    }

    if(route.settings.name == MakerLearnPages.profilePath) {
      profileManager.tapOnProfile(false);
    }

    if(route.settings.name == MakerLearnPages.hexadev) {
      profileManager.tapOnHexaDev(false);
    }
    return true;
  }


  @override
  Future<void> setNewRoutePath(configuration){

  }

}