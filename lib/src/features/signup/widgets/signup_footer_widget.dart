import 'package:flutter/material.dart';
import 'package:mxpert/src/constants/image_strings.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(height: fFormHeight - 10,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(fGoogleLogoImage),
                width: 20.0,
              ),
              label: Text(fSignInWithGoogle.toUpperCase())),
        ),
        TextButton(onPressed: (){}, child: Text.rich(TextSpan(
            children: [
              TextSpan(text: fAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(text: fLogin.toUpperCase())
            ]
        )))
      ],
    );
  }
}