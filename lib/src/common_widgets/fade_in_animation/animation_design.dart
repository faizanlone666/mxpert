
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:mxpert/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';

class FFadeInAnimation extends StatelessWidget {
  FFadeInAnimation(
      {super.key,
      required this.child,
      required this.durationInMs,
      this.animate});

  final splashController = Get.put(FadeInAnimationController());
  final Widget child;
  final int durationInMs;
  final FAnimatePosition? animate;

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedPositioned(
          duration: Duration(milliseconds: durationInMs),
          top: splashController.animate.value
              ? animate!.topAfter
              : animate!.topBefore,
          left: splashController.animate.value
              ? animate!.leftAfter
              : animate!.leftBefore,
          bottom: splashController.animate.value
              ? animate!.bottomAfter
              : animate!.bottomBefore,
          right: splashController.animate.value
              ? animate!.rightAfter
              : animate!.rightBefore,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: durationInMs),
            opacity: splashController.animate.value ? 1 : 0,
            child: child,
          ),
        ));
  }
}
