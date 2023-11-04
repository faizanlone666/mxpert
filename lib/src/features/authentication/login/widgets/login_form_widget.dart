import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';
import 'package:mxpert/src/features/authentication/forget_password/forget_password_screen.dart';
import 'package:mxpert/src/features/homepage_screen/homepage_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: fEmail,
                hintText: fEmail,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: fPassword,
                  hintText: fPassword,
                  suffixIcon: IconButton(
                      onPressed: null, icon: Icon(Icons.remove_red_eye_sharp))),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // showModalBottomSheet(
                  //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  //   context: context,
                  //   builder: (context) => Container(
                  //     padding: const EdgeInsets.all(fDefaultSize),
                  //     child: const Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [],
                  //     ),
                  //   ),
                  // );
                  Get.to(()=> const ForgetPasswordScreen());
                },
                child: const Text(fForgetPassword),
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (()=> Get.to(()=> const HomePageScreen())) , child: Text(fLogin.toUpperCase())))
          ],
        ),
      ),
    );
  }
}
