import 'package:flutter/material.dart';
import 'package:note_app/utils/constants/colors.dart';
import 'package:note_app/utils/constants/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: KColors.semiWhite,
        body: Column(
          children: [
            // Nav Container
            navigationContainer(height, KStrings.select_your_plan),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.03,
                ),
                Text(
                  KStrings.pricing_options_for_all_budgets.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
                // explanation container
                explanationContainer(height, width, KStrings.explanation),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  // padding: const EdgeInsets.all(30),
                  child: Row(
                    children: [
                      starterContainer(height, width),
                      starterContainer(height, width),
                      starterContainer(height, width),
                    ],
                  ),
                ),
                // starterContainer(height, width),
                const Text(
                  KStrings.explanation1,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  KStrings.contact_us,
                  style: TextStyle(
                      fontSize: 17,
                      color: KColors.green,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container starterContainer(double height, double width) {
    return Container(
      margin: EdgeInsets.only(
          top: height * 0.03, left: width * 0.02, right: width * 0.02),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.037, vertical: height * 0.03),
      decoration: const BoxDecoration(
        color: KColors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
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
          oferWidget(height, KStrings.offer_1),
          oferWidget(height, KStrings.offer_2),
          oferWidget(height, KStrings.offer_3),
          oferWidget(height, KStrings.offer_4),
          oferWidget(height, KStrings.offer_5),
          SizedBox(
            height: height * 0.02,
          ),

          // button
          button()
        ],
      ),
    );
  }

  Container button() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 50),
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
            style: TextStyle(
                fontSize: height * 0.017, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  // explanation container
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

// navigation container
  Container navigationContainer(double height, String text) {
    return Container(
      margin: EdgeInsets.only(
        top: height * 0.03,
      ),
      decoration: const BoxDecoration(color: KColors.white),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: KColors.black,
                size: 24,
              )),
          Text(
            text,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
