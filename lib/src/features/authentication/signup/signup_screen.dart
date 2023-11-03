import 'package:flutter/material.dart';
import 'package:mxpert/src/common_widgets/form_widget/form_header_widget.dart';
import 'package:mxpert/src/constants/image_strings.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';
import 'package:mxpert/src/features/authentication/signup/widgets/signup_footer_widget.dart';
import 'package:mxpert/src/features/authentication/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(fDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                  size: size,
                  image: fWelcomeScreenImage,
                  title: fSignUpTitle,
                  subTitle: fSignUpSubTitle,
                ),
                const SignUpFormWidget(),
                const SignUpFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


