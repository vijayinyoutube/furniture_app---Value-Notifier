import 'package:flutter/material.dart';

class HomePageDecl with ChangeNotifier {
  ValueNotifier<int> amount = ValueNotifier<int>(75);
  ValueNotifier<int> count = ValueNotifier<int>(1);
}

HomePageDecl homepagedecl = new HomePageDecl();
