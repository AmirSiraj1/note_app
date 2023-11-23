// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:note_app/shared/widget/custom_container.dart';
import 'package:note_app/shared/widget/offer_widget.dart';
import 'package:note_app/utils/constants/colors.dart';
import 'package:note_app/utils/constants/strings.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: KColors.semiWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            //Select your plan
            CustumContainer(
              height: height,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    alignment: AlignmentDirectional.centerStart,
                    padding: const EdgeInsets.all(0),
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: KColors.black,
                      size: 24,
                    ),
                  ),
                  const Text(
                    KStrings.starter_plan_selected,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            // monthly Subscription
            CustumContainer(
              height: height,
              width: width,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(KStrings.monthly_subscription),
                  Text(KStrings.some_date)
                ],
              ),
            ),

            // selected plan
            CustumContainer(
              height: height,
              width: width,
              child: Column(
                children: [
                  // selected plan and starter button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        KStrings.selected_Plan,
                        style: TextStyle(fontSize: 19),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 2),
                        decoration: BoxDecoration(
                            color: KColors.grayLight,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          KStrings.starter,
                          style: TextStyle(
                              color: KColors.grayShade,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Divider(
                    color: KColors.gray,
                  ),
                  offerWidget(height, KStrings.offer_1),
                  offerWidget(height, KStrings.offer_2),
                  offerWidget(height, KStrings.offer_3),
                  offerWidget(height, KStrings.offer_4),
                  offerWidget(height, KStrings.offer_5),
                ],
              ),
            ),

            // price part
            CustumContainer(
              height: height,
              width: width,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        KStrings.item,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        KStrings.price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Divider(
                    color: KColors.gray,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        KStrings.monthly_starter_subscription,
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'ETB 254.15',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        KStrings.tax,
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'ETB 44.85',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  const Divider(
                    color: KColors.gray,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        KStrings.grand_total,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ETB 299.00',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // pay with part
            CustomPayContainer(
              height: height,
              width: width,
              imgSorce: KStrings.logo_telebirr,
              text: KStrings.pay_with_telebirr,
            ),
            CustomPayContainer(
              height: height,
              width: width,
              imgSorce: KStrings.logo_cbe,
              text: KStrings.commercial_bank_of_ethiopia,
            ),
            CustomPayContainer(
              height: height,
              width: width,
              imgSorce: KStrings.logo_awash,
              text: KStrings.awash_bank,
            ),
            SizedBox(
              height: height * 0.05,
            )
          ],
        ),
      ),
    );
  }
}

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
    return Container(
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
    );
  }
}
