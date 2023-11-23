import 'package:flutter/material.dart';
import 'package:note_app/screens/screen_2.dart';
import 'package:note_app/shared/widget/button.dart';
import 'package:note_app/shared/widget/offer_widget.dart';
import 'package:note_app/utils/constants/colors.dart';
import 'package:note_app/utils/constants/strings.dart';

Container starterContainer(
  BuildContext context,
  double height,
  double width,
) {
  return Container(
    margin: EdgeInsets.only(
        left: width * 0.04, right: width * 0.04, bottom: height * 0.03),
    padding: EdgeInsets.only(
        left: width * 0.037,
        right: width * 0.037,
        top: height * 0.03,
        bottom: height * 0.04),
    decoration: BoxDecoration(
        color: KColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: KColors.gray.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 0),
          ),
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          KStrings.starter,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        const Row(
          children: [
            Text(
              'ETB 299',
              style: TextStyle(
                  color: KColors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              KStrings.per_month,
              style: TextStyle(color: KColors.gray, fontSize: 15),
            )
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
        const Divider(
          color: KColors.black,
          thickness: 0.5,
        ),
        SizedBox(
          height: height * 0.01,
        ),
        offerWidget(height, KStrings.offer_1),
        offerWidget(height, KStrings.offer_2),
        offerWidget(height, KStrings.offer_3),
        offerWidget(height, KStrings.offer_4),
        offerWidget(height, KStrings.offer_5),
        SizedBox(
          height: height * 0.05,
        ),

        // button
        button(
          ontap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const Screen2())));
          },
        )
      ],
    ),
  );
}
