import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:furniture_app/Declarations/HomePageDecl.dart';
import 'package:furniture_app/Declarations/Images/ImageFiles.dart';
import 'package:furniture_app/Declarations/Global/Colors/Colors.dart';
import 'package:furniture_app/Declarations/Global/Fonts/FontStyles.dart';
import 'package:furniture_app/Declarations/Global/Widget/GlobalWidgets.dart';

Widget buildBottomContainer(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.00),
          topRight: Radius.circular(35.00),
        ),
        color: containerColor,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -150,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            buildImage(context),
                            buildColorIcons(context),
                          ],
                        ),
                        buildPrice(context),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 35.00),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Modern Sofa",
                          style: fonts[globalfontIndex](
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 35.00,
                          ),
                        ),
                        Container(
                          color: primaryColor,
                          width: 175,
                          height: 2.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.00, right: 25.00, top: 25.00),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildText("Price Method:", true),
                              buildText("Fixed", false),
                            ],
                          ),
                          heightSpacer(5.5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildText("Provider Details:", true),
                                Flexible(
                                    child: buildText("Unavailable", false)),
                              ],
                            ),
                          ),
                          heightSpacer(50.00),
                          Container(
                            width: 317,
                            height: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor,
                            ),
                            child: Center(
                              child: Text(
                                "Order Now",
                                style: fonts[globalfontIndex](
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.00,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

Widget buildText(String msg, isBold) => Text(
      msg,
      style: fonts[globalfontIndex](
        color: accentColor,
        fontWeight: isBold ? FontWeight.bold : null,
        fontSize: 20.00,
      ),
    );

Widget buildImage(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: 393,
      child: Image.asset(
        chair[0],
        fit: BoxFit.contain,
      ),
    );

Widget buildPrice(BuildContext context) => Container(
      color: Colors.transparent,
      height: 200,
      width: MediaQuery.of(context).size.width / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widthSpacer(20.00),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: homepagedecl.amount.value.toString(),
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
                homepagedecl.count.value.toString(),
                style: fonts[globalfontIndex](
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.00),
              ),
              widthSpacer(15.00),
              buildIncDec(Icons.add),
            ],
          )
        ],
      ),
    );

Widget buildIncDec(IconData myIcon) => GestureDetector(
      onTap: () {
        myIcon == Icons.add ? handleIncDec(true) : handleIncDec(false);
      },
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

handleIncDec(bool canInc) {
  canInc
      ? homepagedecl.amount.value += 75
      : homepagedecl.amount.value - 75 >= 75
      ? homepagedecl.amount.value -= 75
      : homepagedecl.amount.value;

  canInc
      ? homepagedecl.count.value += 1
      : homepagedecl.count.value - 1 >= 1
      ? homepagedecl.count.value -= 1
      : homepagedecl.count.value;
}

Widget buildColorIcons(BuildContext context) => Row(
      children: [
        for (var i = 0; i < 5; i++) buildIconBtn(mycolors[i]),
        widthSpacer(20.00),
      ],
    );

Widget buildIconBtn(Color myColor) => Container(
      child: IconButton(
        icon: Icon(
          Icons.circle,
          color: myColor.withOpacity(0.65),
          size: 30,
        ),
        onPressed: () {},
      ),
    );
