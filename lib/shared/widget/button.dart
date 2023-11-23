import 'package:flutter/material.dart';
import 'package:note_app/utils/constants/colors.dart';
import 'package:note_app/utils/constants/strings.dart';

Container button() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
    decoration: const BoxDecoration(
      color: KColors.green,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: const Row(
      children: [
        Text(
          KStrings.choose_this_plan,
          style: TextStyle(color: KColors.white, fontSize: 18),
        ),
        SizedBox(
          width: 9,
        ),
        Icon(
          Icons.arrow_forward,
          color: KColors.white,
        )
      ],
    ),
  );
}
