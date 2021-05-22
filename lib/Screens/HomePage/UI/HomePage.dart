import 'package:flutter/material.dart';
import 'package:furniture_app/Declarations/HomePageDecl.dart';
import 'package:furniture_app/Screens/HomePage/Widgets/2Body.dart';
import 'package:furniture_app/Screens/HomePage/Widgets/1AppBar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ValueListenableBuilder<int>(
          valueListenable: homepagedecl.amount,
          builder: (context, value, _) {
            return SingleChildScrollView(child: buildBody(context));
          }),
    );
  }
}
