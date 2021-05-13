import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture_app/Declarations/Images/ImageFiles.dart';
import 'package:furniture_app/Declarations/Global/Colors/Colors.dart';

Widget buildBody(BuildContext context) => Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35.00),
              topRight: Radius.circular(35.00),
            ),
            color: containerColor),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -175,
              child: Container(
                width: 275,
                height: 393,
                child: Image.asset(
                  chair[0],
                  fit: BoxFit.contain,
                ),
              ),
            ),
              Text("asakjbdkj"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("asakjbdkj")],
            )
          ],
        ),
      ),
    );
