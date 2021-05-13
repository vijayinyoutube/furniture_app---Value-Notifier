import 'package:flutter/material.dart';
import 'package:furniture_app/Declarations/Global/Colors/Colors.dart';
import 'package:furniture_app/Declarations/Global/Fonts/FontStyles.dart';

AppBar buildAppBar() => AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leading: Icon(Icons.navigate_before, color: primaryColor, size: 30.00),
      title: Text(
        "Sofa",
        style: fonts[globalfontIndex](
          color: primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.shopping_cart,
            color: primaryColor,
          ),
        ),
      ],
    );
