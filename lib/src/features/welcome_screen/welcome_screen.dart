import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:mxpert/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:mxpert/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:mxpert/src/constants/image_strings.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';
import 'package:mxpert/src/features/authentication/login/login_screen.dart';
import 'package:mxpert/src/features/authentication/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.fadeOutAnimation();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            FFadeInAnimation(
              durationInMs: 1200,
              animate: FAnimatePosition(
                  bottomAfter: 0,
                  bottomBefore: -100,
                  topAfter: 0,
                  topBefore: 0,
                  leftBefore: 0,
                  leftAfter: 0,
                  rightAfter: 0,
                  rightBefore: 0),
              child: Container(
                padding: const EdgeInsets.all(fDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Hero(
                        tag: 'welcome-image-tag',
                        child: Image(
                          image: const AssetImage(fWelcomeScreenImage),
                          height: height * 0.6,
                        )),
                    Column(children: [
                      Text(
                        fWelcomeTitle,
                        style: Theme.of(context).textTheme.displaySmall,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.displayLarge,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10,)
                    ]),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => Get.to(() => const LoginScreen()),
                            child: Text(fLogin.toUpperCase()),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => Get.to(()=> const SignUpScreen()),
                            child: Text(fSignup.toUpperCase()),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
