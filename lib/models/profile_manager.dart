import 'package:flutter/material.dart';
import 'package:maker_learn/models/user.dart';


class ProfileManager extends ChangeNotifier {
  User get getUser => User(
    firstName: 'Maker Learn',
    lastName: '',
    role: 'Mobile App for Hobbyist',
    profileImageUrl: 'assets/Maker Learn Logo.png',
    points: 100,
    darkMode: _darkMode,
  );

  bool get didSelectUser => _didSelectUser;
  bool get didTapOnHexaDev => _tapOnHexaDev;
  bool get darkMode => _darkMode;

  var _didSelectUser = false;
  var _tapOnHexaDev = false;
  var _darkMode = false;

  void set darkMode(bool darkMode) {
    _darkMode = darkMode;
    notifyListeners();
  }

  void tapOnHexaDev(bool selected) {
    _tapOnHexaDev = selected;
    notifyListeners();
  }

  void tapOnProfile(bool selected) {
    _didSelectUser = selected;
    notifyListeners();
  }
}
