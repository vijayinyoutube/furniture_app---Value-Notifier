import '3TopContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture_app/Screens/HomePage/Widgets/4BottomContainer.dart';

Widget buildBody(BuildContext context) => Column(
      children: [
        buildTopContainer(context),
        buildBottomContainer(context),
      ],
    );
