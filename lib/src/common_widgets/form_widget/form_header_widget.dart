import 'package:flutter/material.dart';
import 'package:mxpert/src/constants/image_strings.dart';
import 'package:mxpert/src/constants/text_strings.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.size,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final Size size;
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            image: AssetImage(image),
            height: size.height * 0.2),
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
