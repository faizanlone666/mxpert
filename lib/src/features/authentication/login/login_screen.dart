import 'package:flutter/material.dart';
import 'package:mxpert/src/common_widgets/form_widget/form_header_widget.dart';
import 'package:mxpert/src/constants/image_strings.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';
import 'package:mxpert/src/features/authentication/login/widgets/login_footer_widget.dart';
import 'package:mxpert/src/features/authentication/login/widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(fDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FormHeaderWidget(size: size, image: fWelcomeScreenImage, title: fLoginTitle, subTitle: fLoginSubTitle,),
                  const LoginForm(),
                  const LoginFooterWidget()
                ],
              )),
        ),
      ),
    );
  }
}