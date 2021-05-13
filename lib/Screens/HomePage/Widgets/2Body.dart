import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture_app/Declarations/Images/ImageFiles.dart';
import 'package:furniture_app/Declarations/Global/Colors/Colors.dart';

Widget buildBody(BuildContext context) => Container(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.00),
                  topRight: Radius.circular(35.00),
                ),
                color: containerColor,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).size.height - 15),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 393,
              child: Image.asset(
                chair[0],
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
