import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:mxpert/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:mxpert/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:mxpert/src/constants/colors.dart';
import 'package:mxpert/src/constants/image_strings.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.fadeInAnimation();
    return Scaffold(
      body: Stack(
        children: [
          FFadeInAnimation(
            durationInMs: 1600,
            animate: FAnimatePosition(
                topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0),
            child: const Image(
              image: AssetImage(fSplashTopIcon),
              height: 110,
            ),
          ),
          FFadeInAnimation(
            durationInMs: 2000,
            animate: FAnimatePosition(
                topBefore: 110,
                topAfter: 110,
                leftAfter: fDefaultSize,
                leftBefore: -80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(fAppName, style: Theme.of(context).textTheme.displaySmall,),
                Text(fAppTagLine, style: Theme.of(context).textTheme.displayMedium)
              ],
            ),
          ),
          FFadeInAnimation(
              durationInMs: 2400,
              animate: FAnimatePosition(bottomBefore: 0, bottomAfter: 200),
              child: const Image(
                image: AssetImage(fSplashImage),
                height: 400,
              )),
          FFadeInAnimation(
            durationInMs: 2400,
            animate: FAnimatePosition(
                bottomBefore: 0,
                bottomAfter: 60,
                rightBefore: fDefaultSize,
                rightAfter: fDefaultSize),
            child: Container(
              width: fSplashContainerSize,
              height: fSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: fPrimaryColor,
              ),

            ),
          )
        ],
      ),
    );
  }
}
