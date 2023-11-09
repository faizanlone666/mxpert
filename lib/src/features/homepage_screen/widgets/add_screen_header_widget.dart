import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxpert/src/constants/colors.dart';
import 'package:mxpert/src/constants/text_strings.dart';

class AddScreenWidget extends StatelessWidget {
  const AddScreenWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height * 0.25,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: fPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (()=> Get.back()),
                      child: const Icon(
                        Icons.arrow_back,
                        color: fWhiteColor,
                      ),
                    ),
                    Text(fAddScreenTitle,style: GoogleFonts.montserrat(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: fWhiteColor),),
                    const Icon(Icons.attach_file_outlined, color: fWhiteColor,)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}