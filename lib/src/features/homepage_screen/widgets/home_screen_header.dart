import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxpert/src/constants/colors.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
    required this.size,
    required this.greetings,
    required this.name,
  });

  final Size size;
  final String greetings, name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          height: size.height * 0.25,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10.0),
              Text(
                greetings,
                style: GoogleFonts.poppins(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: fWhiteColor),
              ),
              Text(
                name,
                style: GoogleFonts.montserrat(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: fWhiteColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
