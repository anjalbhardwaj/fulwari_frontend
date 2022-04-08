// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import '../Theme/styles.dart';

Widget noResultFound(
  String s, {
  context,
  text = 'No result found',
  panndingTop = 230,
  backGroundColor = Colors.white,
  bool? isRankPopup = false,
}) {
  double heightPortrait = MediaQuery.of(context).size.height / 1.5;
  double heightLandscape = MediaQuery.of(context).size.height / 2;
  return Container(
    color: backGroundColor,
    width: double.infinity,
    alignment: Alignment.center,
    height: MediaQuery.of(context).orientation == Orientation.landscape
        ? (isRankPopup! == true)
            ? heightLandscape - 70
            : heightLandscape
        : (isRankPopup! == true)
            ? heightPortrait - 70
            : heightPortrait,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image.asset(
        //   'assets/images/no_found_icon.png',
        //   fit: BoxFit.fill,
        // ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    ),
  );
}
