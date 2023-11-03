import 'package:flutter/material.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(
        vertical: fFormHeight - 10,
      ),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text(fFullName),
                prefixIcon: Icon(Icons.person_outline_outlined),
              ),
            ),
            const SizedBox(
              height: fFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(fEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: fFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(fPhoneNo),
                prefixIcon: Icon(Icons.numbers),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: fFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text(fPassword),
                prefixIcon: Icon(Icons.fingerprint),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: fFormHeight - 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  fSignup.toUpperCase(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}