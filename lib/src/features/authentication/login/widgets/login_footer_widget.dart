import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/constants/image_strings.dart';
import 'package:mxpert/src/constants/text_strings.dart';
import 'package:mxpert/src/features/authentication/signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(fGoogleLogoImage),
              width: 20.0,
            ),
            onPressed: () {},
            label: const Text(fSignInWithGoogle),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: (()=> Get.to(()=> const SignUpScreen())),
          child: Text.rich(
            TextSpan(
              text: fDontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyLarge,
              children: const [
                TextSpan(
                  text: fSignup,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}