import 'package:flutter/material.dart';

Container oferWidget(double height, String text) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: height * 0.009),
    child: Row(
      children: [
        const Icon(
          Icons.check,
          size: 26,
        ),
        Text(
          text,
          style:
              TextStyle(fontSize: height * 0.017, fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}
