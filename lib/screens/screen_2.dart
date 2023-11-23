import 'package:flutter/material.dart';
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KColors.white,
        title: const Text(
          KStrings.select_your_plan,
          style: TextStyle(fontSize: 20),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: KColors.black,
              size: 24,
            )),
      ),
      body: Column(
        children: [
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
                          color: KColors.gray,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        KStrings.starter,
                        style: TextStyle(
                            color: KColors.green,
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      KStrings.price,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'ETB 299.00',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // pay with part
          Container(
            margin: EdgeInsets.only(
                top: height * 0.03, left: width * 0.03, right: width * 0.03),
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.07),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: KColors.gray, width: 1)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.paypal_rounded,
                  size: 25,
                ),
                Text(
                  KStrings.pay_with_telebirr,
                  style: TextStyle(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
