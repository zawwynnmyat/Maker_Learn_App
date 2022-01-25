import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MakerLearnTabs {
  static const int explore = 0;
  static const int tutorials = 1;
  static const int quiz = 2;
}

class AppStateManager extends ChangeNotifier {

  bool _initialized = false;
  bool _loggedIn = false;
  bool _onboardingComplete = false;
  int _selectedTab = MakerLearnTabs.explore;

  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  bool get isOnboardingComplete => _onboardingComplete;
  int get getSelectedTab => _selectedTab;

  void saveOnBoarding(bool state) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('onboarding', state);
  }

  void getOnBoarding() async {
    final prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey('onboarding')) {
       bool var1 = prefs.getBool('onboarding');
       if(var1 == null) {
          _onboardingComplete = false;
       } else {
         _onboardingComplete = var1;
       }
    }
  }

  void saveLogin(bool state) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('login', state);
  }

  void getLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey('login')) {
      bool var1 = prefs.getBool('login');
      if(var1 == null) {
        _loggedIn = false;
      } else {
        _loggedIn = var1;
      }
    }
  }

  void initializeApp() {
    getOnBoarding();
    getLogin();

    Timer(
      Duration(milliseconds: 2000), () {
        _initialized = true;
        notifyListeners();
      }
    );
  }

  void login(String username, String password) {
    _loggedIn = true;
    saveLogin(true);
    notifyListeners();
  }

  void completeOnboard() {
    saveOnBoarding(true);
    _onboardingComplete = true;
    notifyListeners();
  }

  void goToTab(index) {
    _selectedTab = index;
    notifyListeners();
  }

  void logout() {
    _initialized = false;
    _loggedIn = false;
    saveLogin(false);
    _onboardingComplete = false;
    saveOnBoarding(false);
    _selectedTab = 0;

    initializeApp();
    notifyListeners();
  }
}