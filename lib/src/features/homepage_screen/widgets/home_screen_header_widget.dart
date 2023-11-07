import 'package:flutter/material.dart';
import 'package:mxpert/src/constants/text_strings.dart';
import 'package:mxpert/src/features/homepage_screen/widgets/home_screen_card_widget.dart';
import 'package:mxpert/src/features/homepage_screen/widgets/home_screen_header.dart';

class HomeScreenHeaderWidget extends StatelessWidget {
  const HomeScreenHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HomeScreenHeader(
          size: size,
          greetings: fHomeScreenTitle,
          name: fHomeScreenSubTitle,
        ),
        const HomeScreenCardWidget(
            totalBalance: 0, income: 3500471800, expenses: 2120148539),
      ],
    );
  }
}