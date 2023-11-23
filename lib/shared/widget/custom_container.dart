import 'package:flutter/material.dart';
import 'package:note_app/utils/constants/colors.dart';

class CustumContainer extends StatelessWidget {
  const CustumContainer({
    super.key,
    required this.height,
    required this.width,
    required this.child,
  });

  final double height;
  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: height * 0.03),
      padding: EdgeInsets.symmetric(
          vertical: height * 0.02, horizontal: width * 0.07),
      color: KColors.white,
      child: child,
    );
  }
}
