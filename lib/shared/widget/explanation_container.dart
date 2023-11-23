import 'package:flutter/material.dart';
import 'package:note_app/utils/constants/colors.dart';

Container explanationContainer(double height, double width, String text) {
  return Container(
    margin: EdgeInsets.only(top: height * 0.03),
    padding: EdgeInsets.symmetric(
        vertical: height * 0.015, horizontal: width * 0.07),
    color: KColors.white,
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 15),
    ),
  );
}
