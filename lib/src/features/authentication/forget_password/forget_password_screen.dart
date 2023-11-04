import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxpert/src/common_widgets/form_widget/form_header_widget.dart';
import 'package:mxpert/src/constants/image_strings.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';
import 'package:mxpert/src/features/authentication/forget_password/forget_password_otp/otp_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                const SizedBox(
                  height: fDefaultSize * 4,
                ),
                FormHeaderWidget(
                  size: size,
                  image: fForgetPasswordImage,
                  title: fForgetPasswordOtpScreen,
                  subTitle: fForgetMailSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: fDefaultSize,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: fFormHeight,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(fEmail),
                        hintText: fEmail,
                        prefixIcon: Icon(Icons.mail_outline_outlined),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (()=> Get.to(()=>const OTPScreen())), child: const Text(fNext)))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
