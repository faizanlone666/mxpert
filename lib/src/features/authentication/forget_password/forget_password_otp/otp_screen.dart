import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxpert/src/constants/sizes.dart';
import 'package:mxpert/src/constants/text_strings.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(fDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                fOtpTitle.toUpperCase(),
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 80.0),
              ),
              Text(
                fOtpSubTitle.toUpperCase(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: fDefaultSize + 10,
              ),
              const Text("$fOtpMessage mexpert@mexpert.com",textAlign: TextAlign.center,),
              const SizedBox(height: fDefaultSize - 10,),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code){
                  print("otp is =>  $code");
                },
              ),
              const SizedBox(height: fDefaultSize - 10,),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(fNext)))
            ],
          ),
        ),
      ),
    );
  }
}
