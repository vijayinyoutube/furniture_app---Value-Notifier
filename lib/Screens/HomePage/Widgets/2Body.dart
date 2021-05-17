import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture_app/Declarations/Global/Fonts/FontStyles.dart';
import 'package:furniture_app/Declarations/Global/Widget/GlobalWidgets.dart';
import 'package:furniture_app/Declarations/HomePageDecl.dart';
import 'package:furniture_app/Declarations/Images/ImageFiles.dart';
import 'package:furniture_app/Declarations/Global/Colors/Colors.dart';

Widget buildBody(BuildContext context) => Container(
      color: Colors.red,
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
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 393,
                    child: Image.asset(
                      chair[0],
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                      color: Colors.transparent,
                      height: 175,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          widthSpacer(20.00),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: homepagedecl.amount.toString(),
                                  style: fonts[globalfontIndex](
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60.00,
                                  ),
                                ),
                                TextSpan(
                                  text: "\$",
                                  style: fonts[globalfontIndex](
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.00,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              buildIncDec(Icons.remove),
                              widthSpacer(15.00),
                              Text(
                                homepagedecl.count.toString(),
                                style: fonts[globalfontIndex](
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.00),
                              ),
                              widthSpacer(15.00),
                              buildIncDec(Icons.remove),
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );

Widget buildIncDec(IconData myIcon) => GestureDetector(
  onTap: (){},
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: incDecColor,
        ),
        child: Icon(
          myIcon,
          color: Colors.white,
        ),
      ),
    );
