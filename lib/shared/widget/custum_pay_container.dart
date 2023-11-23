import 'package:flutter/material.dart';
import 'package:note_app/screens/screen_3.dart';
import 'package:note_app/utils/constants/colors.dart';

class CustomPayContainer extends StatelessWidget {
  const CustomPayContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.imgSorce,
    required this.text,
  }) : super(key: key);

  final double height;
  final double width;
  final String imgSorce;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const Screen3())));
      },
      child: Container(
        margin: EdgeInsets.only(
            top: height * 0.03, left: width * 0.03, right: width * 0.03),
        padding: EdgeInsets.only(
            top: height * 0.02, bottom: height * 0.02, left: width * 0.13),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: KColors.gray, width: 1.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(imgSorce),
            const SizedBox(
              width: 18,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
