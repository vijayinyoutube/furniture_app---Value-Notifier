import 'package:flutter/material.dart';

class HomePageDecl with ChangeNotifier {
  int amount=75;
  ValueNotifier<int> count = ValueNotifier<int>(1);
}

HomePageDecl homepagedecl = new HomePageDecl();
