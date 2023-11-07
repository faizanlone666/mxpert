import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxpert/src/constants/colors.dart';
import 'package:mxpert/src/constants/text_strings.dart';

class HomeScreenCardWidget extends StatelessWidget {
  const HomeScreenCardWidget({
    super.key,
    required this.totalBalance,
    required this.income,
    required this.expenses,
  });

  final int totalBalance, income, expenses;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.15,
      left: size.width * 0.1,
      right: size.width * 0.1,
      child: Container(
        height: 170,
        width: 340,
        decoration: BoxDecoration(
            color: Colors.grey[850], borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fTotalBalance,
                          style: GoogleFonts.poppins(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w400,
                              color: fWhiteColor),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "\$ $totalBalance",
                          style: GoogleFonts.montserrat(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                              color: fWhiteColor),
                        ),
                      ],
                    ),
                    const Icon(Icons.more_horiz, color: Colors.white),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                                radius: 13,
                                backgroundColor: Color(0xFF616161),
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              fIncome,
                              style: GoogleFonts.poppins(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w400,
                                  color: fWhiteColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "\$ $income",
                            style: GoogleFonts.poppins(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: fWhiteColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                                radius: 13,
                                backgroundColor: Color(0xFF616161),
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              fExpenses,
                              style: GoogleFonts.poppins(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w400,
                                  color: fWhiteColor),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "\$ $expenses",
                            style: GoogleFonts.poppins(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: fWhiteColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
