import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:note_app/shared/widget/explanation_container.dart';
import 'package:note_app/shared/widget/starter_container.dart';
import 'package:note_app/utils/constants/colors.dart';
import 'package:note_app/utils/constants/strings.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
        child: Scaffold(
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
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            KStrings.pricing_options_for_all_budgets.toUpperCase(),
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          // explanation container
          explanationContainer(height, width, KStrings.explanation),
          Container(
            margin: EdgeInsets.symmetric(vertical: height * 0.02),
            child: Align(
              alignment: Alignment.center,
              child: TabBar(
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  controller: tabController,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                  unselectedLabelColor: KColors.gray,
                  labelColor: KColors.green,
                  tabs: const [
                    Tab(
                      icon: Icon(
                        Icons.circle,
                        size: 20,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.circle,
                        size: 20,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.circle,
                        size: 20,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.circle,
                        size: 20,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.circle,
                        size: 20,
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: height * 0.63,
            child: TabBarView(
                dragStartBehavior: DragStartBehavior.down,
                controller: tabController,
                physics: const BouncingScrollPhysics(),
                children: [
                  starterContainer(height, width),
                  starterContainer(height, width),
                  starterContainer(height, width),
                  starterContainer(height, width),
                  starterContainer(height, width),
                ]),
          ),

          const Text(
            KStrings.explanation1,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            KStrings.contact_us,
            style: TextStyle(
                fontSize: 18,
                color: KColors.green,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height * 0.03,
          )
        ]),
      ),
    ));
  }
}

// ignore: must_be_immutable
class CircleIndicator extends Decoration {
  final Color color;
  double radius;
  CircleIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint paint;

    paint = Paint()..color = color;
    paint = Paint()..isAntiAlias = true;

    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, paint);
  }
}
