import 'package:flutter/material.dart';
import 'package:insure_bot/models/models.dart';

class UserProvider extends ChangeNotifier {
  BotUser? _user;

  BotUser? get user => _user;

  void setUser(BotUser user) {
    _user = user;
    notifyListeners();
  }
}
